# セッション記録

## 会話の要約
- セッション中の「ぐるぐる回って止まる」問題の原因調査・改善を依頼された
- 原因を調査した結果、以下の3つを特定：
  1. **CLAUDE.md が18KBと重い** → 毎ターン読み込まれコンテキストを圧迫
  2. **HTML生成がトークン大量消費** → 請求書1枚4KB × 6ファイル = 24KB以上
  3. **ファイルを1枚ずつpushしている** → 複数回のAPI呼び出しで詰まる
- 対策として以下を実施・提案：
  1. ✅ `templates/invoice.html` と `templates/receipt.html` をmainにpush済み（HTMLテンプレート化でAIの生成量を削減）
  2. 提案済み：全ファイルを1回のpush_filesにまとめる
  3. 提案済み：**CLAUDE.mdを分割する**（コア5KB + エージェント別ファイル）
    - `agents/shift_rules.md`（シフトルール）→ シフト作成時だけ読む
    - `agents/invoice_rules.md`（請求書ルール）→ 請求書作成時だけ読む
    - `agents/menu_rules.md`（献立ルール）→ 献立作成時だけ読む
- 対応が遅く凜からお叱りを受けた。次回は説明を減らしてすぐ実行すること

## 決定事項
- HTMLテンプレート（invoice/receipt）をmainにpush済み
- CLAUDE.md分割方針は承認前に中断

## 次回への引き継ぎ
- **最優先**：CLAUDE.mdの分割を実行する（18KB → コア5KB + agent別ファイル3つ）
  - CLAUDE.md → コアルール（プロジェクト概要・Git操作・記憶プロトコル・エージェント概要・黒流ルール）のみ
  - agents/shift_rules.md → シフト作成ルール全体
  - agents/invoice_rules.md → 月詠の詳細ルール（テンプレート使用・一括push・領収書同時作成を含む）
  - agents/menu_rules.md → 杏の献立ルール全体
- `templates/invoice.html` と `templates/receipt.html` はmainに存在する
- CLAUDE.mdの月詠出力セクションにテンプレート使用指示と領収書同時作成ルールを追加する必要あり
- **作業スタイル注意**：説明を長々とせず、すぐ実行に移ること