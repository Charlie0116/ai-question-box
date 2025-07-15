# AI Question Box

※ このREADMEは現在編集中です。

---

## 概要
AIによる質問応答を行うチャットボットアプリです。
Ruby on Rails + OpenAI API + Docker を使用しています。

- Railsで構築されたWebアプリケーション
- OpenAI APIを利用した質問応答機能
- Docker + Docker Composeによる簡易な開発環境
- `.env` 管理による安全なシークレット設定

---

## 注意

- `.env` は `.gitignore` 済み
- `password` などの機密情報は含まれていません

---
---

## 実装予定・強化中（In Progress）

- [ ] ユーザーの質問履歴保存機能（ActiveRecord）
- [ ] OpenAI APIレスポンスの自動タグ分類
- [ ] RSpecによるテスト追加
- [ ] GitHub ActionsによるCI導入（rubocop / rspec）
- [ ] 本番環境向けデプロイ構成（RenderまたはFly.io予定）

> ※ 現在、ポートフォリオ強化のため順次追加中です。
