#!/bin/bash
# ブランチをリモートに登録する（これがないとセッションが起動しない）
git push -u origin HEAD 2>/dev/null || true
