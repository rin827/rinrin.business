#!/bin/bash
# セッション開始時に main ブランチから最新の CLAUDE.md を取得する
git fetch origin main --force 2>/dev/null
git checkout origin/main -- CLAUDE.md 2>/dev/null || true

# CLAUDE.md に変更があればコミット&プッシュ
if [ -n "$(git status --porcelain)" ]; then
  git add CLAUDE.md 2>/dev/null
  git commit -m "セッション開始: mainからCLAUDE.mdを読み込み" 2>/dev/null || true
  git push -u origin HEAD 2>/dev/null || true
fi
