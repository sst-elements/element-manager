#! /bin/sh

sed -i "s/<logicLayer.h>/\"logicLayer.h\"/g" ${ORG_DIR}/${1}/logicLayer.cpp
sed -i "s/<cpu.h>/\"cpu.h\"/g" ${ORG_DIR}/${1}/cpu.cpp
sed -i "s/<vaultGlobals.h>/\"vaultGlobals.h\"/g" ${ORG_DIR}/${1}/VaultSimC.cpp
find ${ORG_DIR}/${1} -type f -exec sed -i "s/<VaultSimC.h>/\"VaultSimC.h\"/g" {} \;
find ${ORG_DIR}/${1} -type f -exec sed -i "s/<memReqEvent.h>/\"memReqEvent.h\"/g" {} \;
