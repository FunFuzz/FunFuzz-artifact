#!/bin/bash

set -e

cd /home/test/tools/FunFuzz

# Download and patch sFuzz
git clone https://github.com/FunFuzz/FunFuzz.git
cd /home/test/tools/FunFuzz/FunFuzz

# Install dependencies
sudo ./scripts/install_cmake.sh --prefix /usr/local
sudo ./scripts/install_deps.sh

# Build sFuzz
mkdir build
cd /home/test/tools/FunFuzz/FunFuzz/build
cmake ..
cd /home/test/tools/FunFuzz/FunFuzz/build/fuzzer
make
