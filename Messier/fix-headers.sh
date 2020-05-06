#! /bin/sh

find ${REPO_DIR}/${1} -type f -exec sed -i "s/"Messier.h"/\"Messier.h\"/g" {} \;
