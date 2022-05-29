#!/bin/bash
cp -r ./benchmark/D1 ./FunFuzz/build/fuzzer && cd ./FunFuzz/build/fuzzer

if [ -d "/contracts"]; them
    rm -r ./contracts
fi


mv ./D1 ./contracts

./fuzzer -g -r 0 -d 120 && chmod +x fuzzMe && ./fuzzMe