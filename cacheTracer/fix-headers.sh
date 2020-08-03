#! /bin/sh

sed -i "s/<memEvent.h>/<sst\/elements\/memHierarchy\/memEvent.h>/g" ${ORG_DIR}/${1}/cacheTracer.cpp
