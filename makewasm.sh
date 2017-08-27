#!/bin/bash
cfile=$1
#outputfile=${cfile%.*}.wasm
outputfile=${cfile%.*}.html

#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#libs=$DIR/libs

includes="-I./libs"
#options="-O3 -s WASM=1 -s SIDE_MODULE=1"
options="-O3 -s WASM=1"
std="-std=c++14"

/media/shindin/08cc31db-3114-487f-b1d0-ee8b37169b5f/home/shindin/projects/rufey/src/sandbox/wa/emsdk-portable/emscripten/1.37.9/em++ $cfile -o $outputfile $includes $options -Wno-warn-absolute-paths $std
