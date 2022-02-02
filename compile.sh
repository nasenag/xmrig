#!/bin/bash

mkdir build
cd scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)

mkdir ../../SelfCompile-xmrig-new-build/
cp xmrig ../../SelfCompile-xmrig-new-build/
cp ../src/config.json ../../SelfCompile-xmrig-new-build/


