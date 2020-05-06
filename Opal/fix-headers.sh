#! /bin/sh

sed -i "s/<..\/memHierarchy\/memEvent.h>/\"..\/memHierarchy\/memEvent.h\"/g" ${REPO_DIR}/${1}/Opal_Event.h
