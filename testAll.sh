#!/bin/bash

find . -depth -mindepth 2 -maxdepth 2 -name "*day*" -type d \
    -exec echo Running {} \; \
    -exec sh -c 'pushd .  > /dev/null; cd "$1"; swift test -v; popd > /dev/null' sh {} \;
