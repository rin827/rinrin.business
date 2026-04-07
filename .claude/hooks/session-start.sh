#!/bin/bash
# セッション開始時に main ブランチから最新の CLAUDE.md を取得する
git remote update --prune 2>/dev/null || true
git fetch origin main --force 2>/dev/null
git checkout origin/main -- CLAUDE.md 2>/dev/null || true

# ブランチをリモートに存在させるための初回コミット&プッシュ
# （未コミット状態だとUIにエラーが表示されるため）
if [ -n "$(git status --porcelain)" ]; then
  git add CLAUDE.md 2>/dev/null
  git commit -m "セッション開始: mainからCLAUDE.mdを読み込み" 2>/dev/null || true
fi
git push -u origin HEAD 2>/dev/null || true
