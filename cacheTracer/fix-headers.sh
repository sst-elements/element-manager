#! /bin/sh

sed -i "s/<memEvent.h>/<sst\/elements\/memHierarchy\/memEvent.h>/g" ${REPO_DIR}/${1}/cacheTracer.cpp
