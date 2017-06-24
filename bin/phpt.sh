#!/usr/bin/env bash

_PHPT_FILE_PATH=$1
if [ -z "$_PHPT_FILE_PATH" ]; then
    echo "You need to provide a phpt file to be tests."
    exit 1;
fi

_VERSION=$2
if [ -z "$_VERSION" ]; then
    _VERSION=71
elif [ "$_VERSION" = "all" ]; then
    `git rev-parse --show-toplevel`/bin/phpt.sh $1 71
    `git rev-parse --show-toplevel`/bin/phpt.sh $1 70
    `git rev-parse --show-toplevel`/bin/phpt.sh $1 56
    exit 0;
fi

docker run --rm -i -t \
    -v `git rev-parse --show-toplevel`/phpt:/usr/src/phpt brunoric/phpqa:${_VERSION} \
    make test TESTS=/usr/src/phpt/${_PHPT_FILE_PATH}