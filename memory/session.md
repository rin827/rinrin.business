# セッション記録

## 会話の要約
- rinrin.business を主リポジトリとして設定する作業を実施
- rin.business の CLAUDE.md を rinrin.business にコピーし、全参照を rinrin.business に書き換え
- CLAUDE.md の main push による切断問題を解決するため、SessionStart フックを導入
  - `.claude/hooks/session-start.sh`：セッション開始時に update-claude-md ブランチから CLAUDE.md を自動取得
  - `.claude/settings.json`：フック設定
  - フックファイルは main に push、CLAUDE.md は update-claude-md ブランチで管理
- 司（シフト作成エージェント）の定義が CLAUDE.md になかったため追加
- 全エージェントに「【凜様こちらです】」ルールを追加
- 黒流が15メッセージごとに保存リマインドをするルールを追加・明示
- CLAUDE.md 更新ルール・おつ～プロトコルの自動マージルールも追加済み

## 決定事項
- rinrin.business を主リポジトリとして使う
- CLAUDE.md は update-claude-md ブランチで管理（main には push しない）
- SessionStart フックが毎回セッション開始時に最新 CLAUDE.md を自動取得
- 全エージェント（黒流・司・律・紡・月詠・杏）の設定が揃った
- rin.business は今後使わない方向

## 次回への引き継ぎ
- CLAUDE.md を変更するときは update-claude-md ブランチに push するだけでOK
- main への CLAUDE.md push は不要（フックが自動で取得する）
- memory/session.md の保存先は rinrin.business/main
- SessionStart フックは main に設置済み（.claude/hooks/session-start.sh）
