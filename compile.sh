#!/usr/bin/env sh

set -xeu

path="documents"

find "${path}" -type f -name "*.typ" -exec typst compile --root . {} \;

if [ -n "${CI+x}" ]; then
	find "${path}" -type f ! -name "*.pdf" -delete
fi
