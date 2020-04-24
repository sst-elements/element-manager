#! /bin/zsh

cp -r ${REPO_DIR}/sst-elements/src/sst/elements/${1}/* ${REPO_DIR}/${1} && cd ${REPO_DIR}/${1}
find . \( -type d -name ".deps" -o -name ".dirstamp" \) -exec rm -rf {} \;

find . -type f -exec sed -i "s/sst\/elements\/${1}\///g" {} \;
find . -type f -exec sed -i "s/<sst_config.h>/<sst\/core\/sst_config.h>/g" {} \;

source fix-headers.sh
cd -

if [ "${@[-1]}" = "--script" ]; then
    run-clang-tidy.py -p ${1}/build -fix
    run-clang-tidy.py -p ${1}/build -checks="-*,modernize-use-override" -fix
else
    find ${1}/ \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) -exec clang-tidy -p ${1}/build -header-filter="${1}/*" -fix-errors -fix {} \;
    find ${1}/ \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) -exec clang-tidy -p ${1}/build -header-filter="${1}/*" -checks="-*,modernize-use-override" -fix-errors -fix {} \;
fi

find ${1} \( -name "*.cc" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) -exec clang-format -i {} \;
