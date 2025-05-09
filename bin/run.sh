#!/usr/bin/env bash
set -euo pipefail

bin/build.sh
python3 -m http.server -b 127.0.0.1 47291 -d build
