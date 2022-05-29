#!/bin/bash
cp -r ./benchmark/complicated_contracts ./FunFuzz/build/fuzzer && cd ./FunFuzz/build/fuzzer

if [ -d "/contracts"]; them
    rm -r ./contracts
fi

mv ./complicated_contracts ./contracts

./fuzzer -g -r 0 -d 120 && chmod +x fuzzMe && ./fuzzMe
