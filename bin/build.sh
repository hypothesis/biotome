#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
envsubst '${HYPOTHESIS_EMBED_URL} ${HYPOTHESIS_GROUPS_ALLOWLIST}' < src/index.html > build/index.html
cp -r src/assets build

# Build article version pages
for version in v1 v2; do
  dir="build/content/10.1101/2025.02.18.25322379${version}"
  mkdir -p "$dir"
  envsubst '${HYPOTHESIS_EMBED_URL} ${HYPOTHESIS_GROUPS_ALLOWLIST}' < "src/content/10.1101/2025.02.18.25322379${version}/index.html" > "$dir/index.html"
done
