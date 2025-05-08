#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
HYPOTHESIS_EMBED_URL=http://localhost:5000/embed.js envsubst '${HYPOTHESIS_EMBED_URL}' < site/index.html > build/index.html
cp -r site/assets build
python3 -m http.server -b 127.0.0.1 47291 -d build
