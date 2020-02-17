#!/bin/bash
# set -x

if [ $# -gt 2 ]; then
    echo "usage: $0 num_servers bin [args..]"
   exit -1;
fi

#shift
bin=$1
shift
arg="$@"

# start servers
for ((i=0; i<${DMLC_NUM_SERVER}; ++i)); do
    export HEAPPROFILE=./S${i}
    ${bin} ${arg} &
done

wait
