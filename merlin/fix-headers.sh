#! /bin/sh

find ${ORG_DIR}/${1} -type f -exec sed -i "s/\"router.h\"/\"..\/router.h\"/g" {} \;
find ${ORG_DIR}/${1} -type f -exec sed -i "s/<router.h>/\"..\/router.h\"/g" {} \;
find ${ORG_DIR}/${1} -type f -exec sed -i "s/\"arbitration\/single_arb.h\"/\"single_arb.h\"/g" {} \;
find ${ORG_DIR}/${1} -type f -exec sed -i "s/<arbitration\/single_arb.h>/\"..\/arbitration\/single_arb.h\"/g" {} \;
find ${ORG_DIR}/${1} -type f -exec sed -i "s/\"target_generator\/target_generator.h\"/\"..\/target_generator\/target_generator.h\"/g" {} \;
sed -i "s/<target_generator\/uniform.h>/\"uniform.h\"/g" ${ORG_DIR}/${1}/target_generator/target_generator.cc
find ${ORG_DIR}/${1} -type f -exec sed -i "s/<target_generator\/target_generator.h>/\"target_generator.h\"/g" {} \;
sed -i "s/<target_generator\/bit_complement.h>/\"bit_complement.h\"/g" ${ORG_DIR}/${1}/target_generator/target_generator.cc
sed -i "s/\"offeredload\/offered_load.h\"/\"offered_load.h\"/g" ${ORG_DIR}/${1}/offeredload/offered_load.cc
sed -i "s/\"hr_router\/hr_router.h\"/\"hr_router.h\"/g" ${ORG_DIR}/${1}/hr_router/hr_router.cc
find ${ORG_DIR}/${1} -type f -exec sed -i "s/\"merlin.h\"/\"..\/merlin.h\"/g" {} \;
sed -i "s/\"..\/merlin.h\"/\"merlin.h\"/g" ${ORG_DIR}/${1}/merlin.cc
sed -i "s/\"test\/nic.h\"/\"nic.h\"/g" ${ORG_DIR}/${1}/test/nic.cc
sed -i "s/\"background_traffic\/background_traffic.h\"/\"background_traffic.h\"/g" ${ORG_DIR}/${1}/background_traffic/background_traffic.cc
sed -i "s/\"trafficgen\/trafficgen.h\"/\"trafficgen.h\"/g" ${ORG_DIR}/${1}/trafficgen/trafficgen.cc
sed -i "s/\"reorderLinkControl.h\"/\"interfaces\/reorderLinkControl.h\"/g" ${ORG_DIR}/${1}/boostExports.cc
sed -i "s/\"test\/route_test\/route_test.h\"/\"route_test.h\"/g" ${ORG_DIR}/${1}/test/route_test/route_test.cc
sed -i "s/\"test\/simple_patterns\/shift.h\"/\"shift.h\"/g" ${ORG_DIR}/${1}/test/simple_patterns/shift.cc
sed -i  "s/\"..\/merlin.h\"/\"..\/..\/merlin.h\"/g" ${ORG_DIR}/${1}/test/pt2pt/pt2pt_test.cc
sed -i  "s/\"..\/merlin.h\"/\"..\/..\/merlin.h\"/g" ${ORG_DIR}/${1}/test/bisection/bisection_test.cc
sed -i "s/\"test\/pt2pt\/pt2pt_test.h\"/\"pt2pt_test.h\"/g" ${ORG_DIR}/${1}/test/pt2pt/pt2pt_test.cc
sed -i "s/\"test\/bisection\/bisection_test.h\"/\"bisection_test.h\"/g" ${ORG_DIR}/${1}/test/bisection/bisection_test.cc
