#!/bin/bash
# ブランチをリモートに登録する
# プロキシの起動タイミングにばらつきがあるため、リトライロジックを使用
for i in $(seq 1 15); do
  if git push -u origin HEAD 2>/dev/null; then
    exit 0
  fi
  sleep 1
done
exit 0
