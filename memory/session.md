# セッション記録

## 会話の要約
- 「よろ～」でセッション開始。前回記憶（MCP認証解決・シフト種別確定）を読み込み。
- PC内の不要ファイルをリストアップして削除作業を実施。
- 削除したファイル：
  - Gitインストーラー（62MB）
  - VS Codeインストーラー（135MB）
  - Node.jsインストーラー（31MB）
  - himawari_net_cli_light.zip（174MB）※解凍済みだったため
  - himawari_net_cli_lightフォルダ（182MB）※ひまわりインストール済み確認後
  - .claude.json.backup
  - .claude/backups/内の自動バックアップ5ファイル
  - C:\Users\rinrin\内の3月分請求書HTML × 3（GitHubに保存済み）
  - C:\Users\rinrin\内の3月分領収書HTML × 3（GitHubに保存済み）
- 合計約784MBの節約。
- C:\Users\rinrin\内のHTMLはbashから権限エラーで削除できず、エクスプローラーから手動削除してもらった。
- SE260301*.csv / SV260301.csv（Downloadsフォルダ）は3月分介護報酬請求データのため保持。

## 決定事項
- MCP GitHub認証：解決済み（curlコールバック方式）
- シフト種別（全8種）確定・main反映済み：朝出し・昼出し・中番・遅番①②・夜朝①②・遅夜
- 削除禁止ブランチ：claude/add-external-config-3FBYQ・claude/cleanup-and-optimize-nmp01
- claude/japanese-greeting-* は自動生成ブランチのためチェック対象外
- himawari_net_cli_lightフォルダ：ひまわりインストール済みのため削除済み
- C:\Users\rinrin\内のHTMLファイルはbashから削除できない（権限エラー）→エクスプローラーから手動削除が必要

## 次回への引き継ぎ
- MCPは新規セッションで自動接続されるようになった（リフレッシュトークン保存済み）
- 万が一MCP切断時の再認証手順：authenticate URL → ブラウザで認証 → ERR_CONNECTIONのURLをコピー → ここに貼る
- 献立は別セッションで作成中（4月14日〜20日、4名分、ひじき340g余り）
- Next.jsアプリのソースコードは未作成（将来の課題）
- Downloadsに SE260301*.csv / SV260301.csv が残っている（3月分請求データ、必要に応じて削除）
- 凪チェック：claude/local-setup-guide-O0M0q ブランチが未マージで残存（削除可否は凜判断待ち）
