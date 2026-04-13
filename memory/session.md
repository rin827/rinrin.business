# セッション記録

## 会話の要約

### Obsidian 書き込み権限問題の解決
- 前回からの引き継ぎ：Obsidian Vault への書き込みが EPERM で失敗していた
- 凜が権限を解除 → 再度テスト → まだ EPERM
- Claude Code 再起動後に再度テスト → 書き込み成功！
- `C:\Users\rinrin\Obsidian Vault` への Write が正常に動作することを確認

### .mcp.json のパス修正
- filesystem MCP のパスが `C:\Users\ghaok\OneDrive\ドキュメント\Obsidian Vault`（誤）になっていた
- `C:\Users\rinrin\Obsidian Vault`（正）に修正済み

### Obsidian でのファイル整理
- Obsidian の保管庫として `C:\Users\rinrin\Obsidian Vault` を設定
- 以下のフォルダ構成でノートを作成：
  - 01_ダッシュボード/ホーム.md
  - 02_請求書・領収書/請求書一覧.md、領収書一覧.md
  - 03_献立・買い物/献立一覧.md
  - 04_テンプレート/テンプレート一覧.md
  - 05_システム設定/リポジトリ全体マップ.md、ローカル全体マップ.md、スキル・ツール設定.md
- GitHub リポジトリとローカルの全ファイルを整理してObsidianに記録

### Obsidian 保管庫の状況
- 凜が最初に開いた保管庫は「凜保管」という別の保管庫だった
- 「保管庫としてフォルダを開く」→ `C:\Users\rinrin\Obsidian Vault` を選択するよう案内済み
- 保管庫の切り替えが完了したかは次回確認が必要

### スキル・ツールのディープリサーチと導入
- skill.sh（パークドメインで実体なし）、GitHub、MCPレジストリから組織に必要なスキルを調査
- スキルマーケットプレイス情報：SkillsMP（96,000+）、Claude Marketplaces（2,500+）、Claude Skills Market（280+）
- 以下のMCPサーバーを新規インストール：
  - **invoice-mcp**：PDF請求書の自動生成（月詠用）→ `C:\Users\rinrin\mcp-servers\invoice-mcp\`
  - **html2pdf**：HTML→PDF変換（紡・月詠・杏・葵用）→ `C:\Users\rinrin\mcp-servers\html2pdf\`
- エージェント別スキル割り当てを設定：
  - 司：xlsx
  - 紡：html2pdf
  - 月詠：invoice-mcp・xlsx・pdf
  - 杏：xlsx
  - 葵：docx・pptx・pdf
  - 黒流：全スキル
- CLAUDE.md に「スキル・ツール割り当て」セクションを追加（ローカルのみ、mainへの反映が必要）
- .mcp.json に invoice-mcp と html2pdf を登録済み

## 決定事項
- Obsidian Vault のパス：`C:\Users\rinrin\Obsidian Vault`
- Google連携（Calendar・Workspace）は保留
- invoice-mcp と html2pdf を導入（次回再起動後に有効化）
- 各エージェントにスキル・ツールを割り当て済み
- CLAUDE.md にスキル割り当てセクションを追加（mainへの反映が必要）

## 次回への引き継ぎ
- **CLAUDE.md のmain反映**：ローカルで変更済み（スキル割り当てセクション追加）。フィーチャーブランチからPR経由でmainにマージが必要
- **MCPサーバー動作確認**：Claude Code 再起動後に invoice-mcp と html2pdf が正常に動作するか確認
- **Obsidian 保管庫切り替え確認**：凜が「凜保管」ではなく「Obsidian Vault」を開いているか確認
- **献立**：4月21日以降未作成（4月14〜20日分は完成済み）
- **孤立ブランチ削除**：16本がまだ未処理
- **Next.jsアプリ開発**：着手未
