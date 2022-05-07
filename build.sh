#!/bin/bash
cd ./FunFuzz

mkdir ./build && cd ./build && cmake ..
cd ./fuzzer && make

cd ../../.. && cp -r ./assets ./FunFuzz/build/fuzzer/
