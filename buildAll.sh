#!/bin/bash

# We want this to output $PATH without expansion
packages=()
while IFS= read -r -d $'\0'; do
	packages+=("$REPLY")
done < <(find . -name "*day*" -type d | sort | xargs -0)

for package in "${packages[@]}"; do
	echo "Building $package"
	cd "$package" || return
	swift build -c release
	cd - || return
done
