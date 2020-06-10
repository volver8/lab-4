#! /bin/sh

set -ex

./scripts/checks.sh

cmake -H. -B .build -DBUILD_COVERAGE=On
cmake --build .build --target gcov
cmake --build .build --target test

EXCLUDED="sources/main.cpp"
gcovr -r  . -e $EXCLUDED
