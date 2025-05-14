#!/usr/bin/env bash
set -euo pipefail

HYPOTHESIS_EMBED_URL=http://localhost:5000/embed.js
HYPOTHESIS_API_URL=http://localhost:5000/api/
HYPOTHESIS_AUTHORITY=localhost
HYPOTHESIS_GROUPS='"Pi3Pmdmm", "6279Y8xA"'
export HYPOTHESIS_EMBED_URL HYPOTHESIS_API_URL HYPOTHESIS_AUTHORITY HYPOTHESIS_GROUPS

bin/build.sh
python3 -m http.server -b 127.0.0.1 47291 -d build
