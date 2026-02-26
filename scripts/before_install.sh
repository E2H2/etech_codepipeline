#!/bin/bash
set -euxo pipefail

TARGET=/usr/share/nginx/html

echo "[BeforeInstall] whoami=$(whoami)"
ls -al "$TARGET" || true

rm -fv "$TARGET/index.html" || true
rm -rfv "$TARGET"/* || true

echo "[BeforeInstall] after delete"
ls -al "$TARGET" || true