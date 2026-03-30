#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
envsubst '${HYPOTHESIS_EMBED_URL} ${HYPOTHESIS_GROUPS_ALLOWLIST}' < src/index.html > build/index.html
cp -r src/assets build
