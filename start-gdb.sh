#!/bin/bash

PARAM=$1
PROGRAM_NAME="${PARAM:=main}"

OUTPUT="$(ps -ef | grep gdbserver | awk '/'${PROGRAM_NAME}'/ { print $2}')"
echo "gdbserver PID: $OUTPUT"
kill -9 "$OUTPUT"
OUTPUT="$(ps -aux | awk '/'${PROGRAM_NAME}'/' | awk 'NR==1{print $2}')"
echo "the running program $OUTPUT"
kill -9 "$OUTPUT"
sleep 2

mkdir -p build
cd build
cmake ..
make -j4
gdbserver 127.0.0.1:7777 ./${PROGRAM_NAME}