#!/bin/bash

# We want this to output $PATH without expansion
packages=()
while IFS= read -r -d $'\0'; do
	packages+=("$REPLY")
done < <(find . -name "*day*" -type d -prune -print0 | sort -z)

for package in "${packages[@]}"; do
	echo "Testing $package"
	cd "$package" || exit
	swift test --enable-test-discovery --enable-code-coverage
	llvm-cov export -format="lcov" .build/debug/*.xctest -instr-profile .build/debug/codecov/default.profdata >info.lcov
	cd - || exit
done
