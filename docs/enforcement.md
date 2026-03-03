---
title: "機械的強制ルール"
date: 2026-02-25
status: approved
---

# 機械的強制ルール

mamelog-app リポジトリで機械的に強制されるルールの一覧と説明。

## 3層の検証体制

### 層1: ドキュメント構造リンター (`bun run lint:docs`)

Bun スクリプト（`scripts/doc-lint.ts`）で実装。pre-commit フックおよび CI で実行。

| ルール               | 対象            | 説明                                                      |
| -------------------- | --------------- | --------------------------------------------------------- |
| frontmatter-required | docs/           | frontmatter ブロック（`---`）の存在を検証                 |
| frontmatter-fields   | docs/           | title, date, status フィールドの存在を検証                |
| frontmatter-status   | docs/           | status が draft/review/approved/outdated のいずれかを検証 |
| filename-kebab-case  | 全 .md ファイル | ファイル名が kebab-case であることを検証                  |
| link-valid           | 全 .md ファイル | 内部 Markdown リンクのリンク先が実在することを検証        |

エラーメッセージには修正手順が含まれる。

### 層2: 鮮度・品質チェック（週次 GitHub Actions）

| チェック       | スクリプト                        | 閾値         |
| -------------- | --------------------------------- | ------------ |
| 鮮度チェック   | `scripts/freshness-check.ts`      | docs/: 180日 |
| 品質スコア更新 | `scripts/quality-score-update.ts` | --           |

問題発見時は GitHub Issue を自動作成する。

### 層3: 既存ツール（維持）

| ツール     | 対象                | 説明                              |
| ---------- | ------------------- | --------------------------------- |
| dprint     | *.md, *.yaml, *.yml | フォーマット自動修正              |
| commitlint | コミットメッセージ  | Conventional Commits 形式の強制   |
| actionlint | .github/workflows/  | GitHub Actions ワークフローの検証 |
| pinact     | .github/workflows/  | Actions バージョンの SHA ピン留め |

## 新しいルールの追加方法

1. `scripts/doc-lint.ts` にルールを追加する
2. このファイル（docs/enforcement.md）の層1テーブルを更新する
3. AGENTS.md の変更は不要（このファイルへのリンクがあるため）
