#!/bin/bash

find -s . -name "*day*" -depth 2 -type d \
    -exec echo Running {} \; \
    -exec sh -c 'pushd .  > /dev/null; cd $1; swift run -c release; popd > /dev/null' sh {} \;
