#! /bin/sh

find ${ORG_DIR}/${1} -type f -exec sed -i "s/\"sst_config.h\"/<sst\/core\/sst_config.h>/g" {} \;
sed -i "s/\"output.h\"/<sst\/core\/output.h>/g" ${ORG_DIR}/${1}/_BankCommand.hpp
sed -i "s/<output.h>/<sst\/core\/output.h>/g" ${ORG_DIR}/${1}/c_Transaction.hpp

ed -s ${ORG_DIR}/${1}/c_TxnConverter.hpp << 'EOF'
0a
// clang-format off
.
$a
// clang-format on
.
w
EOF
