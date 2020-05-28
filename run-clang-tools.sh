#! /bin/zsh

ELEM_DIR=${ORG_DIR}/${1}

if [ "${@[-1]}" = "--copy" ]; then
    cp -r ${REPO_DIR}/${1}/* ${ELEM_DIR} && cd ${ELEM_DIR}
    find . \( -type d -name ".deps" -o -name ".dirstamp" \) -exec rm -rf {} \;
fi

if [ "${@[-1]}" = "--headers" ]; then
    find ${ELEM_DIR} -type f -exec sed -i "s/sst\/elements\/${1}\///g" {} \;
    find ${ELEM_DIR} -type f -exec sed -i "s/<sst_config.h>/<sst\/core\/sst_config.h>/g" {} \;
    if [[ -a ${1}/fix-headers.sh ]]; then
        source ${1}/fix-headers.sh
    fi
fi

if [ "${@[-1]}" = "--tidy" ]; then
    cp .clang-tidy ${ELEM_DIR}
    run-clang-tidy.py -p ${ELEM_DIR}/build -header-filter="${ELEM_DIR}/*" -fix
    run-clang-tidy.py -p ${ELEM_DIR}/build -header-filter="${ELEM_DIR}/*" -checks="-*,modernize-use-override" -fix
    rm ${ELEM_DIR}/.clang-tidy
elif [ "${@[-1]}" = "--tidy2" ]; then
    cp .clang-tidy ${ELEM_DIR}
    find ${ELEM_DIR} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-tidy -p ${ELEM_DIR}/build -header-filter="${ELEM_DIR}/*" -fix-errors {} \;
    find ${ELEM_DIR} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-tidy -p ${ELEM_DIR}/build -header-filter="${ELEM_DIR}/*" \
        -checks="-*,modernize-use-override" -fix-errors {} \;
    rm ${ELEM_DIR}/.clang-tidy
fi

if [ "${@[-1]}" = "--format" ]; then
    cp .clang-format ${ELEM_DIR}
    find ${ELEM_DIR} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-format -i {} \;
    rm ${ELEM_DIR}/.clang-format
fi
