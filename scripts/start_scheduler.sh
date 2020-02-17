#!/bin/bash
# set -x
if [ $# -gt 1 ]; then
    echo "usage: $0"
    exit -1;
fi

bin=$1
shift
arg="$@"

# start the scheduler
${bin} ${arg} &

wait
