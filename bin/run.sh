#!/usr/bin/env bash
set -euo pipefail

HYPOTHESIS_EMBED_URL=http://localhost:5000/embed.js
export HYPOTHESIS_EMBED_URL

bin/build.sh
python3 -m http.server -b 127.0.0.1 47291 -d build
