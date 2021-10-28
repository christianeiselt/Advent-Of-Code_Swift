#!/bin/bash

find -s . -name "*day*" -depth 2 -type d \
    -exec echo Running {} \; \
    -exec sh -c 'pushd .  > /dev/null; cd "$1"; swift test -v; popd > /dev/null' sh {} \;
