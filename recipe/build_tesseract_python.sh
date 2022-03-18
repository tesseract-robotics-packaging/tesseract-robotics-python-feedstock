#!/bin/sh

set -e

cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
  -DCMAKE_PREFIX_PATH:PATH=$PREFIX \
  -DCMAKE_BUILD_TYPE:STRING=Release \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON \
  -DFIND_LIBRARY_USE_LIB64_PATHS=ON \
  -DTaskflow_DIR=${PREFIX}/lib64/cmake/Taskflow \
  -S src/tesseract_python \
  -B build_tesseract_python_dir

cmake --build build_tesseract_python_dir --config Release -- -j$CPU_COUNT
cmake --build build_tesseract_python_dir --config Release --target install
