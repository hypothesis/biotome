#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
envsubst '${HYPOTHESIS_EMBED_URL}' < site/index.html > build/index.html
cp -r site/assets build
