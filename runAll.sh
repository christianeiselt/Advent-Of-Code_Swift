#!/bin/bash

# We want this to output $PATH without expansion
# shellcheck disable=SC2016
find . -name "*day*" -type d \
	-exec echo Running {} + \
	-exec sh -c 'cd "$1"; swift run -c release' sh {} +
