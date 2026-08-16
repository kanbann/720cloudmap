#!/usr/bin/env bash
set -euo pipefail

rm -rf dist
mkdir -p dist

cp index.html index.js data.js style.css config.js dist/
cp -R img vendor dist/

cat > dist/config.js <<EOF
window.TILES_BASE_URL = "${TILES_BASE_URL:-tiles}";
EOF
