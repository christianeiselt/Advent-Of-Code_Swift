#!/bin/bash

# We want this to output $PATH without expansion
packages=()
while IFS= read -r -d $'\0'; do
	packages+=("$REPLY")
done < <(find . -name "*day*" -type d -prune -print0 | sort -z)

for package in "${packages[@]}"; do
	echo "Running $package"
	cd "$package" || exit
	swift test -v --enable-code-coverage --show-codecov-path
	cd - || exit
done
