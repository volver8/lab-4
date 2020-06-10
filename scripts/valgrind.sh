#! /bin/sh

./scripts/checks.sh

set -ex
cd .build/
valgrind ./tests
