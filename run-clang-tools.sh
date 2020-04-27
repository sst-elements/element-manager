#! /bin/zsh

if [ "${@[-1]}" = "--copy" ]; then
    cp -r ${REPO_DIR}/sst-elements/src/sst/elements/${1}/* ${REPO_DIR}/${1} && cd ${REPO_DIR}/${1}
    find . \( -type d -name ".deps" -o -name ".dirstamp" \) -exec rm -rf {} \;
fi

if [ "${@[-1]}" = "--headers" ]; then
    cd ${REPO_DIR}/${1}
    find . -type f -exec sed -i "s/sst\/elements\/${1}\///g" {} \;
    find . -type f -exec sed -i "s/<sst_config.h>/<sst\/core\/sst_config.h>/g" {} \;
    source fix-headers.sh
fi

if [ "${@[-1]}" = "--tidy" ]; then
    run-clang-tidy.py -p ${REPO_DIR}/${1}/build -fix
    run-clang-tidy.py -p ${REPO_DIR}/${1}/build -checks="-*,modernize-use-override" -fix
elif [ "${@[-1]}" = "--tidy2" ]; then
    find ${REPO_DIR}/${1}/ \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-tidy -p ${REPO_DIR}/${1}/build -header-filter="${1}/*" -fix-errors -fix {} \;
    find ${REPO_DIR}/${1}/ \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-tidy -p ${REPO_DIR}/${1}/build -header-filter="${1}/*" \
        -checks="-*,modernize-use-override" -fix-errors -fix {} \;
fi

if [ "${@[-1]}" = "--format" ]; then
    find ${REPO_DIR}/${1} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) \
        -exec clang-format -i {} \;
fi
