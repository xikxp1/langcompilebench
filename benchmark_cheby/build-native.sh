#!/bin/sh
set -eu

echo Cleaning
rm -rf build .cache
mkdir -m 700 .cache
export CHEBY_CACHE="$PWD/.cache"

echo Building
time cheby build
