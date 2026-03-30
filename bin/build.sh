#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
envsubst '${HYPOTHESIS_EMBED_URL} ${HYPOTHESIS_GROUPS_ALLOWLIST}' < src/index.html > build/index.html
cp -r src/assets build

# Create article version pages for the Disqus comment import demo.
# These reuse the main page content but add a <base> tag so that relative
# asset paths (./assets/…) resolve correctly from the nested directory.
for version in v1 v2; do
  dir="build/content/10.1101/2025.02.18.25322379${version}"
  mkdir -p "$dir"
  sed 's|<head>|<head>\n  <base href="../../../">|' build/index.html > "$dir/index.html"
done
