#!/bin/bash
# セッション開始時に update-claude-md ブランチから最新の CLAUDE.md を取得する
git fetch origin update-claude-md 2>/dev/null
git checkout origin/update-claude-md -- CLAUDE.md 2>/dev/null || true
