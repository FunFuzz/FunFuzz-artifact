#!/bin/bash
cp -r ./benchmark/D2 ./FunFuzz/build/fuzzer && cd ./FunFuzz/build/fuzzer

if [ -d "/contracts"]; them
    rm -r ./contracts
fi


mv ./D2 ./contracts

./fuzzer -g -r 0 -d 120 && chmod +x fuzzMe && ./fuzzMe