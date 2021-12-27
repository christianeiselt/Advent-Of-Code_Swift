#!/bin/bash

# We want this to output $PATH without expansion
# shellcheck disable=SC2016
find . -name "*day*" -type d \
	-exec echo Building {} + \
	-exec sh -c 'cd "$1"; swift build -c release' sh {} +
