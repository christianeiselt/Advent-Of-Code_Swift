#!/bin/bash

find . -depth -mindepth 2 -maxdepth 2 -name "*day*" -type d \
    -exec echo Building {} \; \
    -exec sh -c 'pushd . > /dev/null; cd "$1"; swift build -c release; popd > /dev/null' sh {} \;
