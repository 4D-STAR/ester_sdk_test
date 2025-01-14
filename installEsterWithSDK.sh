#!/bin/bash

# Download and initialize the 4DSTAR SDK 
URL="http://user.astro.wisc.edu/~townsend/resource/download/fourdsdk/fourdsdk-x86_64-linux-24.9.1.tar.gz"
OUTPUT="fourdsdk-x86_64-linux-24.9.1.tar.gz"

if [ -f "$output" ] || [ -d "fourdsdk" ]; then
    echo "File '$OUTPUT' already exists. Skipping download."
else
    echo "File '$OUTPUT' not found. Downloading..."
    curl -O "$URL"
fi

[ -d "fourdsdk" ] || tar -xzvf $OUTPUT
export FOURDSDK_ROOT=`realpath fourdsdk`
source ${FOURDSDK_ROOT}/bin/fourdsdk_init.sh 
export CC=$FOURDSDK_ROOT/bin/gcc

# Download Ester
git clone https://github.com/ester-project/ester.git
cd ester
git checkout evolution
if [ ! -d "build" ]; then
  mkdir -p build
fi
# Apply patches
git apply ../patches/cmake_with_sdk.patch
git apply ../patches/hdf5_pointer.patch
git apply ../patches/missing_header.patch

# Compile
cd build
rm -r CMake*
cmake .. -DCMAKE_INSTALL_PREFIX=../../install 
make
make install

# Test
cd ../../install/bin
./star1d -noplot -M 5 -o M5.h5
./star_evol -noplot -i M5.h5 -nth 1 -age 0.5
