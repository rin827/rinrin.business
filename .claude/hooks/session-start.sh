#!/bin/bash
# mainから最新のCLAUDE.mdを取得してブランチを登録する
git fetch origin main --force 2>/dev/null || true
git checkout origin/main -- CLAUDE.md 2>/dev/null || true
if [ -n "$(git status --porcelain)" ]; then
  git add CLAUDE.md 2>/dev/null
  git commit -m "セッション開始: mainからCLAUDE.mdを読み込み" 2>/dev/null || true
fi
git push -u origin HEAD 2>/dev/null || true
