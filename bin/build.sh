#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
envsubst '${HYPOTHESIS_EMBED_URL},${HYPOTHESIS_API_URL},${HYPOTHESIS_AUTHORITY},${HYPOTHESIS_GROUPS}' < src/index.html > build/index.html
cp -r src/assets build
