#! /bin/sh

find ${ORG_DIR}/${1}/mpi/motifs -type f -exec sed -i "s/\"mpi\/embermpigen.h\"/\"..\/embermpigen.h\"/g" {} \;
sed -i "s/\"embergen.h\"/\"..\/embergen.h\"/g" ${ORG_DIR}/${1}/libs/misc.h
sed -i "s/\"embergen.h\"/\"..\/embergen.h\"/g" ${ORG_DIR}/${1}/mpi/embermpigen.h
sed -i "s/\"embergen.h\"/\"..\/embergen.h\"/g" ${ORG_DIR}/${1}/shmem/emberShmemGen.h

# find ${REPO_DIR}/${1} -type f -exec sed -i "s/<mirandaGenerator.h>/\"..\/mirandaGenerator.h\"/g" {} \;
# sed -i "s/<generators\/singlestream.h>/\"singlestream.h\"/g" ${REPO_DIR}/${1}/generators/singlestream.cc
# sed -i "s/<generators\/stencil3dbench.h>/\"stencil3dbench.h\"/g" ${REPO_DIR}/${1}/generators/stencil3dbench.cc
# sed -i "s/<generators\/streambench.h>/\"streambench.h\"/g" ${REPO_DIR}/${1}/generators/streambench.cc
# sed -i "s/<generators\/streambench_customcmd.h>/\"streambench_customcmd.h\"/g" ${REPO_DIR}/${1}/generators/streambench_customcmd.cc
# sed -i "s/<generators\/randomgen.h>/\"randomgen.h\"/g" ${REPO_DIR}/${1}/generators/randomgen.cc
# sed -i "s/<generators\/revsinglestream.h>/\"revsinglestream.h\"/g" ${REPO_DIR}/${1}/generators/revsinglestream.cc
