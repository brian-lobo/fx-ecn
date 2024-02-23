#!/bin/sh

DEFAULT_BUILD_DIR=./build

createBuildDir() {
  BUILD_DIR=$1

  if [ -e $BUILD_DIR ] && [ -d $BUILD_DIR ]; then
    rm -rf $BUILD_DIR
  fi

  mkdir $BUILD_DIR
}

compile() {
  BUILD_DIR=$1

  cd $BUILD_DIR
  cmake ..
  cmake --build .
}

main() {
  createBuildDir $DEFAULT_BUILD_DIR

  compile $DEFAULT_BUILD_DIR
}

main
