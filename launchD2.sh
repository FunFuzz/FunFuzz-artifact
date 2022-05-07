#!/bin/bash
cp -r ./benchmark/D2 ./FunFuzz/build/fuzzer && cd ./FunFuzz/build/fuzzer
mv ./D2 ./contracts

./fuzzer -g -r 0 -d 120 && chmod +x fuzzMe && ./fuzzMe