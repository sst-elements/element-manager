#! /bin/sh

find ${ORG_DIR}/${1} -type f -exec sed -i "s/\"sst_config.h\"/<sst\/core\/sst_config.h>/g" {} \;
sed -i "s/\"sst\/elements\/miranda\/mirandaEvent.h\"/<sst\/elements\/miranda\/mirandaEvent.h>/g" ${ORG_DIR}/${1}/singleThread.cc
