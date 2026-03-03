---
title: "実装ステータス"
date: 2026-03-03
status: approved
---

# 実装ステータス

mamelog-app の実装進捗を追跡するリファレンスドキュメント。開発者および AI エージェントが現在の状態を即座に把握できることを目的とする。

## 全体サマリー

| カテゴリ                | 完了 | 進行中 | 未着手 | 合計 |
| ----------------------- | ---- | ------ | ------ | ---- |
| インフラ・ツール        | 8    | 0      | 8      | 16   |
| パッケージ (20)         | 0    | 0      | 20     | 20   |
| MVP 機能 (F-001〜F-011) | 0    | 0      | 11     | 11   |
| 画面 (17)               | 0    | 0      | 17     | 17   |

## インフラ・ツールセットアップ

### 完了済み

| 項目                  | 状態 | 備考                                                 |
| --------------------- | ---- | ---------------------------------------------------- |
| Git リポジトリ初期化  | 完了 | GitHub リポジトリ作成済み                            |
| ディレクトリ構造      | 完了 | 20パッケージのディレクトリ作成済み                   |
| lefthook (Git hooks)  | 完了 | pre-commit, commit-msg, post-merge, post-checkout    |
| commitlint            | 完了 | Conventional Commits 強制。scope: app, core, feature |
| dprint (フォーマッタ) | 完了 | Markdown, YAML, JSON 対応                            |
| actionlint            | 完了 | GitHub Actions ワークフロー検証                      |
| pinact (SHA ピン留め) | 完了 | Actions バージョンの SHA ピン留め                    |
| ドキュメント基盤      | 完了 | docs/ 配下の品質基準、強制ルール、設計ドキュメント   |

### 未着手

| 項目                                | 状態   | 備考                                                |
| ----------------------------------- | ------ | --------------------------------------------------- |
| mise.toml への Flutter/Dart 追加    | 未着手 | 現在 actionlint, pinact, bun のみ                   |
| pubspec.yaml (ルートワークスペース) | 未着手 | Dart workspace 定義                                 |
| pubspec.yaml (各パッケージ)         | 未着手 | 20パッケージ分                                      |
| Melos 設定 (pubspec.yaml 内)        | 未着手 | Melos monorepo 管理（pubspec.yaml の `melos` キー） |
| analysis_options.yaml               | 未着手 | Dart 静的解析ルール                                 |
| build.yaml                          | 未着手 | Freezed / json_serializable / Injectable コード生成 |
| Firebase 設定ファイル               | 未着手 | google-services.json, GoogleService-Info.plist      |
| CI/CD (Flutter テスト・ビルド)      | 未着手 | PR チェック、ビルド、デプロイパイプライン           |

## パッケージ実装ステータス

### app レイヤー (2パッケージ)

| パッケージ   | 責務                                                   | 状態   | 備考                                                      |
| ------------ | ------------------------------------------------------ | ------ | --------------------------------------------------------- |
| `app/mobile` | iOS/Android エントリーポイント、Flavor 分離、DI 初期化 | 未着手 | android/, ios/ のみ存在。pubspec.yaml, lib/, test/ 未作成 |
| `app/shared` | アプリレベル共有ユーティリティ                         | 未着手 | pubspec.yaml, lib/, test/ すべて未作成                    |

### core レイヤー (13パッケージ)

| パッケージ                          | 責務                                      | 状態   | 備考                                          |
| ----------------------------------- | ----------------------------------------- | ------ | --------------------------------------------- |
| `core/authenticator`                | 認証抽象 (Firebase Auth)                  | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/common`                       | 共有ユーティリティ、拡張メソッド          | 未着手 | lib/src/log/ ディレクトリのみ存在（実装なし） |
| `core/data`                         | Repository 実装 (ローカル + リモート統合) | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/database`                     | データベース抽象インターフェース          | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/database_drift`               | Drift (SQLite) 実装                       | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/datastore`                    | Key-Value ストア抽象                      | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/datastore_shared_preferences` | SharedPreferences 実装                    | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/designsystem`                 | デザイントークン、MD3 テーマ              | 未着手 | assets/i18n/ ディレクトリのみ存在             |
| `core/domain`                       | ユースケース、Repository インターフェース | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/model`                        | ドメインモデル、エンティティ (Freezed)    | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/network`                      | HTTP クライアント、API 抽象               | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/testing`                      | テストユーティリティ、モック              | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |
| `core/ui`                           | 共有 UI コンポーネント                    | 未着手 | pubspec.yaml, lib/, test/ すべて未作成        |

### feature レイヤー (5パッケージ)

| パッケージ        | 責務                                               | 状態   | 備考                                   |
| ----------------- | -------------------------------------------------- | ------ | -------------------------------------- |
| `feature/auth`    | 認証画面 (ログイン、オンボーディング)              | 未着手 | pubspec.yaml, lib/, test/ すべて未作成 |
| `feature/capture` | キャプチャフロー (写真/QR/URL、LLM 抽出、レビュー) | 未着手 | pubspec.yaml, lib/, test/ すべて未作成 |
| `feature/library` | コーヒーライブラリ (一覧、詳細、編集)              | 未着手 | pubspec.yaml, lib/, test/ すべて未作成 |
| `feature/tasting` | テイスティングノート (記録追加、詳細、編集)        | 未着手 | pubspec.yaml, lib/, test/ すべて未作成 |
| `feature/stats`   | 統計ダッシュボード                                 | 未着手 | pubspec.yaml, lib/, test/ すべて未作成 |

## MVP 機能ステータス

| ID    | 機能名                      | 関連パッケージ                       | 状態   |
| ----- | --------------------------- | ------------------------------------ | ------ |
| F-001 | ユーザー認証 (Google/Apple) | `core/authenticator`, `feature/auth` | 未着手 |
| F-002 | 写真撮影による自動抽出      | `feature/capture`, `core/network`    | 未着手 |
| F-003 | QR コードスキャン           | `feature/capture`                    | 未着手 |
| F-004 | URL 直接入力                | `feature/capture`                    | 未着手 |
| F-005 | カード型プレビュー + 編集   | `feature/capture`, `feature/library` | 未着手 |
| F-006 | 手動入力フォールバック      | `feature/capture`                    | 未着手 |
| F-007 | エントリ保存                | `core/data`, `core/database_drift`   | 未着手 |
| F-008 | コーヒーライブラリ          | `feature/library`                    | 未着手 |
| F-009 | 簡易テイスティングノート    | `feature/tasting`                    | 未着手 |
| F-010 | オフライン撮影 + 自動抽出   | `feature/capture`, `core/data`       | 未着手 |
| F-011 | アカウント削除              | `feature/auth`, `core/authenticator` | 未着手 |

## マイルストーン進捗

### M1: 基盤構築 -- 進行中

プロジェクトの技術基盤を整備するフェーズ。

| タスク                                       | 状態   | 備考                                        |
| -------------------------------------------- | ------ | ------------------------------------------- |
| リポジトリ初期化・CI/CD 基盤                 | 完了   | lefthook, commitlint, dprint, actionlint    |
| ドキュメント作成                             | 完了   | architecture, data-model, development-guide |
| mise.toml に Flutter/Dart 追加               | 未着手 | --                                          |
| pubspec.yaml (ルート + 全パッケージ)         | 未着手 | --                                          |
| Melos 設定 (pubspec.yaml の `melos` キー)    | 未着手 | melos.yaml は非推奨                         |
| analysis_options.yaml 作成                   | 未着手 | --                                          |
| build.yaml (コード生成設定)                  | 未着手 | --                                          |
| core/common 実装 (Result 型、ユーティリティ) | 未着手 | --                                          |
| core/model 実装 (Freezed モデル)             | 未着手 | --                                          |
| core/domain 実装 (Repository I/F)            | 未着手 | --                                          |
| core/database 実装 (DB 抽象 I/F)             | 未着手 | --                                          |
| core/datastore 実装 (KV 抽象 I/F)            | 未着手 | --                                          |
| core/designsystem 実装 (テーマ、トークン)    | 未着手 | --                                          |
| core/testing 実装 (テストユーティリティ)     | 未着手 | --                                          |
| Firebase プロジェクト設定                    | 未着手 | --                                          |
| app/mobile 最小構成 (Flavor + DI)            | 未着手 | --                                          |

### M2: コア機能 -- 未着手

認証、写真キャプチャ、ライブラリの基本機能を実装するフェーズ。

| タスク                                | 状態   | 関連機能     |
| ------------------------------------- | ------ | ------------ |
| core/authenticator 実装               | 未着手 | F-001        |
| core/network 実装 (HTTP クライアント) | 未着手 | F-002        |
| core/database_drift 実装              | 未着手 | F-007        |
| core/data 実装 (Repository)           | 未着手 | F-007        |
| feature/auth 実装                     | 未着手 | F-001        |
| feature/capture 実装 (写真 + LLM)     | 未着手 | F-002, F-005 |
| feature/library 実装                  | 未着手 | F-008        |
| core/ui 実装 (共有コンポーネント)     | 未着手 | --           |

### M3: 入力拡張 -- 未着手

QR コード、URL 入力、手動入力など入力手段を拡張するフェーズ。

| タスク                                 | 状態   | 関連機能 |
| -------------------------------------- | ------ | -------- |
| QR コードスキャン機能                  | 未着手 | F-003    |
| URL 入力機能                           | 未着手 | F-004    |
| 手動入力フォールバック                 | 未着手 | F-006    |
| core/datastore_shared_preferences 実装 | 未着手 | --       |

### M4: 体験完成 -- 未着手

テイスティングノート、オフライン対応、アカウント管理を完成させるフェーズ。

| タスク                    | 状態   | 関連機能 |
| ------------------------- | ------ | -------- |
| feature/tasting 実装      | 未着手 | F-009    |
| オフライン撮影 + 自動抽出 | 未着手 | F-010    |
| アカウント削除機能        | 未着手 | F-011    |
| feature/stats 実装        | 未着手 | --       |
| app/shared 実装           | 未着手 | --       |

### M5: リリース準備 -- 未着手

品質向上、パフォーマンス最適化、ストアリリース準備を行うフェーズ。

| タスク                                | 状態   |
| ------------------------------------- | ------ |
| E2E テスト                            | 未着手 |
| パフォーマンス最適化                  | 未着手 |
| App Store / Google Play ストア申請    | 未着手 |
| クラッシュレポート (Crashlytics) 設定 | 未着手 |
| プライバシーポリシー・利用規約        | 未着手 |

## 画面実装ステータス

| 画面名             | 関連パッケージ    | 状態   | 備考 |
| ------------------ | ----------------- | ------ | ---- |
| スプラッシュ       | `app/mobile`      | 未着手 | --   |
| オンボーディング   | `feature/auth`    | 未着手 | --   |
| ライブラリ一覧     | `feature/library` | 未着手 | --   |
| コーヒー詳細       | `feature/library` | 未着手 | --   |
| コーヒー編集       | `feature/library` | 未着手 | --   |
| 入力方法選択       | `feature/capture` | 未着手 | --   |
| カメラ             | `feature/capture` | 未着手 | --   |
| 撮影画像プレビュー | `feature/capture` | 未着手 | --   |
| LLM 処理中         | `feature/capture` | 未着手 | --   |
| 抽出結果レビュー   | `feature/capture` | 未着手 | --   |
| QR スキャナー      | `feature/capture` | 未着手 | --   |
| URL 入力           | `feature/capture` | 未着手 | --   |
| 記録一覧           | `feature/tasting` | 未着手 | --   |
| 記録詳細           | `feature/tasting` | 未着手 | --   |
| 記録追加           | `feature/tasting` | 未着手 | --   |
| 記録編集           | `feature/tasting` | 未着手 | --   |
| アカウント         | `feature/auth`    | 未着手 | --   |

## 更新ガイドライン

本ドキュメントは実装の進捗に合わせて継続的に更新する。

### ステータス値

| 値     | 説明                                             |
| ------ | ------------------------------------------------ |
| 未着手 | 未実装。ディレクトリ構造のみ、またはまだ計画段階 |
| 進行中 | 実装作業中。部分的に完了                         |
| 完了   | 実装・テスト完了                                 |

### 更新タイミング

- パッケージの pubspec.yaml 作成時にステータスを「進行中」に更新
- パッケージのテストが通る状態になったら「完了」に更新
- マイルストーンの全タスク完了時にマイルストーンを「完了」に更新
- 全体サマリーの数値を各セクションと一致するよう更新

## 関連ドキュメント

- [知識ベース](index.md) -- docs/ ディレクトリの目次
- [アーキテクチャ設計](architecture.md) -- レイヤー構成、状態管理、DI、データフロー
- [データモデル仕様](data-model.md) -- Drift テーブル定義、Freezed モデル
- [開発ガイド](development-guide.md) -- 環境構築、コード生成、テスト
