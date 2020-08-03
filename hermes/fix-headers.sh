#! /bin/sh

# find ${ORG_DIR}/${1} -type f -exec sed -i "s/<mirandaGenerator.h>/\"..\/mirandaGenerator.h\"/g" {} \;
# sed -i "s/<generators\/gupsgen.h>/\"gupsgen.h\"/g" ${ORG_DIR}/${1}/generators/gupsgen.cc
# sed -i "s/<generators\/singlestream.h>/\"singlestream.h\"/g" ${ORG_DIR}/${1}/generators/singlestream.cc
# sed -i "s/<generators\/stencil3dbench.h>/\"stencil3dbench.h\"/g" ${ORG_DIR}/${1}/generators/stencil3dbench.cc
# sed -i "s/<generators\/streambench.h>/\"streambench.h\"/g" ${ORG_DIR}/${1}/generators/streambench.cc
# sed -i "s/<generators\/streambench_customcmd.h>/\"streambench_customcmd.h\"/g" ${ORG_DIR}/${1}/generators/streambench_customcmd.cc
# sed -i "s/<generators\/randomgen.h>/\"randomgen.h\"/g" ${ORG_DIR}/${1}/generators/randomgen.cc
# sed -i "s/<generators\/revsinglestream.h>/\"revsinglestream.h\"/g" ${ORG_DIR}/${1}/generators/revsinglestream.cc
