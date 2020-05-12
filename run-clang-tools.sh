#! /bin/zsh

if [ "${@[-1]}" = "--copy" ]; then
    cp -r ${REPO_DIR}/sst-elements/src/sst/elements/${1}/* ${REPO_DIR}/${1} && cd ${REPO_DIR}/${1}
    find . \( -type d -name ".deps" -o -name ".dirstamp" \) -exec rm -rf {} \;
fi

if [ "${@[-1]}" = "--headers" ]; then
    find ${REPO_DIR}/${1} -type f -exec sed -i "s/sst\/elements\/${1}\///g" {} \;
    find ${REPO_DIR}/${1} -type f -exec sed -i "s/<sst_config.h>/<sst\/core\/sst_config.h>/g" {} \;
    if [[ -a ${1}/fix-headers.sh ]]; then
        source ${1}/fix-headers.sh
    fi
fi

if [ "${@[-1]}" = "--tidy" ]; then
    cp .clang-tidy ${REPO_DIR}/${1}
    run-clang-tidy.py -p ${REPO_DIR}/${1}/build -header-filter="${REPO_DIR}/${1}/*" -fix
    run-clang-tidy.py -p ${REPO_DIR}/${1}/build -header-filter="${REPO_DIR}/${1}/*" -checks="-*,modernize-use-override" -fix
    rm ${REPO_DIR}/${1}/.clang-tidy
elif [ "${@[-1]}" = "--tidy2" ]; then
    cp .clang-tidy ${REPO_DIR}/${1}
    find ${REPO_DIR}/${1} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-tidy -p ${REPO_DIR}/${1}/build -header-filter="${REPO_DIR}/${1}/*" -fix-errors {} \;
    find ${REPO_DIR}/${1} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-tidy -p ${REPO_DIR}/${1}/build -header-filter="${REPO_DIR}/${1}/*" \
        -checks="-*,modernize-use-override" -fix-errors {} \;
    rm ${REPO_DIR}/${1}/.clang-tidy
fi

if [ "${@[-1]}" = "--format" ]; then
    cp .clang-format ${REPO_DIR}/${1}
    find ${REPO_DIR}/${1} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-format -i {} \;
    rm ${REPO_DIR}/${1}/.clang-format
fi
