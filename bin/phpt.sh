#!/usr/bin/env bash

_PHPT_FILE_PATH=$1
if [ -z "$_PHPT_FILE_PATH" ]; then
    echo "You need to provide a phpt file to be tests."
    exit 1;
fi

_VERSION=$2
if [ -z "$_VERSION" ]; then
    _VERSION=71
fi

docker run --rm -i -t \
    -v `git rev-parse --show-toplevel`/phpt:/usr/src/phpt brunoric/phpqa:${_VERSION} \
    make test TESTS=/usr/src/phpt/${_PHPT_FILE_PATH}