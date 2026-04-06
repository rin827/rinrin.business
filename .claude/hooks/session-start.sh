#!/bin/bash
# セッション開始時に main ブランチから最新の CLAUDE.md を取得する
git fetch origin main 2>/dev/null
git checkout origin/main -- CLAUDE.md 2>/dev/null || true
