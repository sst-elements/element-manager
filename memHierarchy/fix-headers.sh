#! /bin/sh

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"util.h\"/\"..\/util.h\"/g" {} \;
find ${ORG_DIR}/${1}/customcmd -type f -exec sed -i "s/\"util.h\"/\"..\/util.h\"/g" {} \;
find ${ORG_DIR}/${1}/membackend -type f -exec sed -i "s/\"util.h\"/\"..\/util.h\"/g" {} \;
find ${ORG_DIR}/${1}/Sieve -type f -exec sed -i "s/\"util.h\"/\"..\/util.h\"/g" {} \;
find ${ORG_DIR}/${1}/testcpu -type f -exec sed -i "s/\"util.h\"/\"..\/util.h\"/g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"memEvent.h\"/\"..\/memEvent.h\"/g" {} \;
find ${ORG_DIR}/${1}/customcmd -type f -exec sed -i "s/\"memEvent.h\"/\"..\/memEvent.h\"/g" {} \;
find ${ORG_DIR}/${1}/membackend -type f -exec sed -i "s/\"memEvent.h\"/\"..\/memEvent.h\"/g" {} \;
find ${ORG_DIR}/${1}/testcpu -type f -exec sed -i "s/\"memEvent.h\"/\"..\/memEvent.h\"/g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/coherencemgr\///g" {} \;
find ${ORG_DIR}/${1}/customcmd -type f -exec sed -i "s/customcmd\///g" {} \;
find ${ORG_DIR}/${1}/membackend -type f -exec sed -i "s/membackend\///g" {} \;
find ${ORG_DIR}/${1}/testcpu -type f -exec sed -i "s/testcpu\///g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"cacheListener.h\"/\"..\/cacheListener.h\"/g" {} \;
find ${ORG_DIR}/${1}/Sieve -type f -exec sed -i "s/\"cacheListener.h\"/\"..\/cacheListener.h\"/g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"replacementManager.h\"/\"..\/replacementManager.h\"/g" {} \;
find ${ORG_DIR}/${1}/Sieve -type f -exec sed -i "s/\"replacementManager.h\"/\"..\/replacementManager.h\"/g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"cacheArray.h\"/\"..\/cacheArray.h\"/g" {} \;
find ${ORG_DIR}/${1}/Sieve -type f -exec sed -i "s/\"cacheArray.h\"/\"..\/cacheArray.h\"/g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"lineTypes.h\"/\"..\/lineTypes.h\"/g" {} \;
find ${ORG_DIR}/${1}/Sieve -type f -exec sed -i "s/\"lineTypes.h\"/\"..\/lineTypes.h\"/g" {} \;

find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"mshr.h\"/\"..\/mshr.h\"/g" {} \;
find ${ORG_DIR}/${1}/coherencemgr -type f -exec sed -i "s/\"memLinkBase.h\"/\"..\/memLinkBase.h\"/g" {} \;

find ${ORG_DIR}/${1}/customcmd -type f -exec sed -i "s/\"memEventBase.h\"/\"..\/memEventBase.h\"/g" {} \;

find ${ORG_DIR}/${1}/membackend -type f -exec sed -i "s/\"memoryController.h\"/\"..\/memoryController.h\"/g" {} \;

sed -i "s/\"hash.h\"/\"..\/hash.h\"/g" ${ORG_DIR}/${1}/coherencemgr/coherenceController.h
sed -i "s/\"customcmd\/customCmdMemory.h\"/\"..\/customcmd\/customCmdMemory.h\"/g" ${ORG_DIR}/${1}/membackend/memBackendConvertor.h

sed -i "s/\"customcmd\/customOpCodeCmd.h\"/\"..\/customcmd\/customOpCodeCmd.h\"/g" ${ORG_DIR}/${1}/membackend/extMemBackendConvertor.cc
sed -i "s/\"scratchpad.h\"/\"..\/scratchpad.h\"/g" ${ORG_DIR}/${1}/membackend/scratchBackendConvertor.cc

sed -i "s/\"memTypes.h\"/\"..\/memTypes.h\"/g" ${ORG_DIR}/${1}/customcmd/customCmdEvent.h
sed -i "s/\"memTypes.h\"/\"..\/memTypes.h\"/g" ${ORG_DIR}/${1}/coherencemgr/MESI_L1.h

sed -i "s/<networkMemInspector.h>/\"networkMemInspector.h\"/g" ${ORG_DIR}/${1}/networkMemInspector.cc
sed -i "s/<memNIC.h>/\"memNIC.h\"/g" ${ORG_DIR}/${1}/networkMemInspector.cc
sed -i "s/<goblinHMCBackend.h>/\"goblinHMCBackend.h\"/g" ${ORG_DIR}/${1}/membackend/goblinHMCBackend.cc
