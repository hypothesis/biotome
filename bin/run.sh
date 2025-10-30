#!/usr/bin/env bash
set -euo pipefail

export HYPOTHESIS_EMBED_URL=http://localhost:5000/embed.js
export HYPOTHESIS_GROUPS_ALLOWLIST="__world__"

bin/build.sh
python3 -m http.server -b 127.0.0.1 47291 -d build
