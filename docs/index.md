---
title: "mamelog-app 知識ベース"
date: 2026-02-25
status: approved
---

# mamelog-app 知識ベース

mamelog-app リポジトリの設計・開発・品質管理ドキュメントの目次。

## 目次

### 品質

- [黄金原則](golden-principles.md) -- すべてのドキュメントが満たすべき品質基準
- [品質スコアボード](quality-score.md) -- 品質指標（自動更新）

### 設計

- [Flutter アーキテクチャ設計](architecture.md) -- レイヤー構成、状態管理、データフロー、ナビゲーション、認証
- [データモデル仕様](data-model.md) -- Drift テーブル定義、Freezed モデル、ER 図、オフライン同期

### 開発

- [開発ガイド](development-guide.md) -- 環境構築から日常の開発ワークフローまで

### 進捗

- [実装ステータス](implementation-status.md) -- パッケージ、機能、マイルストーンの実装進捗

### 運用

- [機械的強制ルール](enforcement.md) -- リンター・CI で自動検証されるルール
