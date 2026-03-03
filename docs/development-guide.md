---
title: "開発ガイド"
date: 2026-03-03
status: draft
---

# 開発ガイド

mamelog-app の開発に必要な環境構築から日常の開発ワークフローまでをカバーする How-To ガイド。

## 環境構築

### 前提条件

以下がインストール済みであること。

| ソフトウェア   | 最低バージョン  | 用途                           |
| -------------- | --------------- | ------------------------------ |
| macOS          | 14.0            | 開発 OS                        |
| Git            | 2.x             | バージョン管理                 |
| Xcode          | 16.x            | iOS ビルド・シミュレータ       |
| Android Studio | Hedgehog 以降   | Android ビルド・エミュレータ   |
| メモリ         | 8GB（推奨16GB） | ビルド・コード生成の快適な動作 |

### mise によるツールインストール

mamelog-app は [mise](https://mise.jdx.dev/) でツールバージョンを一元管理している。Flutter, Dart, Java, Ruby, CocoaPods, Bun 等のバージョンは `mise.toml` に定義されており、手動でのバージョン指定は不要である。

1. mise をインストールする。

```bash
curl https://mise.run | sh
```

2. シェルに mise を有効化する。

```bash
# bash の場合
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
source ~/.bashrc

# zsh の場合
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc
```

3. リポジトリをクローンし、セットアップを実行する。

```bash
git clone https://github.com/mamelog/mamelog-app.git
cd mamelog-app
mise trust && mise install && mise run bootstrap
```

`mise trust` はリポジトリの `mise.toml` を信頼済みとしてマークする。`mise install` は定義された全ツールをインストールする。`mise run bootstrap` は Flutter の依存解決、Melos のブートストラップ、npm パッケージのインストール、lefthook のセットアップを一括実行する。

### iOS シミュレータのセットアップ

1. Xcode を起動し、メニューから **Xcode > Settings > Platforms** で iOS シミュレータランタイムをダウンロードする。
2. CocoaPods の依存を解決する。

```bash
cd app/mobile/ios && pod install && cd -
```

3. シミュレータを起動してアプリを実行する。

```bash
cd app/mobile && flutter run --no-pub --flavor dev
```

### Android エミュレータのセットアップ

1. Android Studio を起動し、**Virtual Device Manager** から API 33 以上のエミュレータを作成する。
2. エミュレータを起動してアプリを実行する。

```bash
cd app/mobile && flutter run --no-pub --flavor dev
```

## Flavor（環境分離）

mamelog-app は3つの Flavor で環境を分離している。

| Flavor | 接続先 API      | Firebase プロジェクト | ログレベル | 用途           |
| ------ | --------------- | --------------------- | ---------- | -------------- |
| `dev`  | ローカル / 開発 | dev 用プロジェクト    | verbose    | 日常の開発     |
| `stg`  | ステージング    | stg 用プロジェクト    | info       | 結合テスト     |
| `prod` | 本番            | 本番プロジェクト      | warning    | リリースビルド |

### 実行コマンド

```bash
# 開発環境（日常の開発ではこれを使う）
cd app/mobile && flutter run --no-pub --flavor dev

# ステージング環境
cd app/mobile && flutter run --no-pub --flavor stg

# 本番環境
cd app/mobile && flutter run --no-pub --flavor prod
```

### Flavor ごとの設定

環境固有の値は以下の仕組みで管理する。

- **Dart defines** -- `--dart-define-from-file` で環境変数を注入する
- **iOS (Xcconfig)** -- `ios/Flutter/` 配下の `.xcconfig` ファイルで Bundle ID や Firebase 設定を切り替える
- **Android (productFlavors)** -- `android/app/build.gradle` の `productFlavors` ブロックで applicationId や Firebase 設定を切り替える

## コード生成

mamelog-app は `build_runner` によるコード生成を使用している。

### 対象パッケージと生成ファイル

| パッケージ             | 生成ファイル     | 用途                               |
| ---------------------- | ---------------- | ---------------------------------- |
| `freezed`              | `*.freezed.dart` | 不変データモデル（copyWith, ==）   |
| `json_serializable`    | `*.g.dart`       | JSON シリアライズ / デシリアライズ |
| `injectable_generator` | `*.config.dart`  | DI モジュールの登録コード          |
| `drift`                | `*.g.dart`       | 型安全 SQLite クエリ               |

### コマンド

変更したパッケージのみコード生成を実行する（推奨）。

```bash
melos run codegen:diff:head
```

全パッケージに対してコード生成を実行する。

```bash
melos run codegen
```

### build.yaml の設定

各パッケージの `build.yaml` で生成オプションをカスタマイズできる。主な設定項目:

- `generate_for` -- 生成対象のファイルパターン
- `options` -- 各ビルダー固有のオプション（例: `explicit_to_json: true`）

### 生成ファイルの命名規則

| パターン         | 説明                                                |
| ---------------- | --------------------------------------------------- |
| `*.g.dart`       | `json_serializable`, `drift` 等の汎用コード生成出力 |
| `*.freezed.dart` | Freezed による不変データモデル生成出力              |
| `*.config.dart`  | Injectable による DI モジュール登録の生成出力       |

生成ファイルはバージョン管理に含めない。`.gitignore` で除外されている。

## 新しいパッケージの追加方法

### core/ パッケージの追加手順

1. `core/` ディレクトリ配下に新しいパッケージディレクトリを作成する。

```bash
mkdir -p core/new_package/lib/src
```

2. `pubspec.yaml` を作成する。パッケージ名は `mamelog_core_new_package` の命名規則に従う。

```yaml
name: mamelog_core_new_package
description: パッケージの説明
version: 0.0.1
publish_to: none

environment:
  sdk: ">=3.0.0 <4.0.0"

dependencies:
# 他の core/ パッケージへの依存のみ許可

dev_dependencies:
  build_runner:
  # 必要な generator を追加
```

3. Melos のブートストラップを再実行する。

```bash
melos bootstrap
```

4. コード生成が必要な場合は DI モジュールを登録する（次の「DI モジュールの登録」を参照）。

### feature/ パッケージの追加手順

1. `feature/` ディレクトリ配下に新しいパッケージディレクトリを作成する。

```bash
mkdir -p feature/new_feature/lib/src
```

2. `pubspec.yaml` を作成する。パッケージ名は `mamelog_feature_new_feature` の命名規則に従う。

```yaml
name: mamelog_feature_new_feature
description: フィーチャーの説明
version: 0.0.1
publish_to: none

environment:
  sdk: ">=3.0.0 <4.0.0"

dependencies:
  flutter:
    sdk: flutter
  flutter_bloc:
  freezed_annotation:
  injectable:
  get_it:
  # core/ パッケージへの依存のみ許可
  # 他の feature/ パッケージへの依存は禁止

dev_dependencies:
  build_runner:
  freezed:
  injectable_generator:
```

3. Melos のブートストラップを再実行する。

```bash
melos bootstrap
```

### DI モジュールの登録

Injectable の `@GeneratedMicroModule` を使用して、パッケージごとに DI モジュールを定義する。

1. パッケージのルートに DI モジュールファイルを作成する。

```dart
// lib/new_package_module.dart
import 'package:injectable/injectable.dart';

@GeneratedMicroModule()
abstract class NewPackageModule {}
```

2. コード生成を実行する。

```bash
melos run codegen:diff:head
```

3. app レイヤーのメイン DI 設定で、生成されたモジュールを登録する。

## 新しい画面の追加方法

### Cubit/Bloc の作成パターン

mamelog-app では機能単位で Cubit / Bloc を分割する。シンプルな UI ロジック（約80%のケース）には Cubit を、複雑な非同期フロー（debounce, リトライ等）には Bloc を使用する。

### State の定義

Freezed の sealed class パターンで State を定義する。

```dart
// lib/src/cubit/coffee_detail_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee_detail_state.freezed.dart';

@freezed
sealed class CoffeeDetailState with _$CoffeeDetailState {
  const factory CoffeeDetailState.initial() = CoffeeDetailStateInitial;
  const factory CoffeeDetailState.loading() = CoffeeDetailStateLoading;
  const factory CoffeeDetailState.loaded({
    required CoffeeEntry entry,
  }) = CoffeeDetailStateLoaded;
  const factory CoffeeDetailState.error({
    required String message,
  }) = CoffeeDetailStateError;
}
```

### Cubit の実装

```dart
// lib/src/cubit/coffee_detail_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CoffeeDetailCubit extends Cubit<CoffeeDetailState> {
  CoffeeDetailCubit(this._repository) : super(const CoffeeDetailState.initial());

  final CoffeeRepository _repository;

  Future<void> loadCoffee(String id) async {
    emit(const CoffeeDetailState.loading());
    final result = await _repository.getCoffeeById(id);
    switch (result) {
      case Ok(:final value):
        emit(CoffeeDetailState.loaded(entry: value));
      case Error(:final error):
        emit(CoffeeDetailState.error(message: error.toString()));
    }
  }
}
```

### go_router へのルート追加

新しい画面のルートを go_router の設定に追加する。

1. ルートパスを定義する。
2. `GoRoute` を既存のルート構成に追加する。
3. feature パッケージは直接ナビゲーションせず、app レイヤーからコールバックで画面遷移を委譲する。

### DI 登録

Cubit / Bloc に `@injectable` アノテーションを付与し、コード生成を実行すれば自動的に DI に登録される。

```dart
@injectable
class CoffeeDetailCubit extends Cubit<CoffeeDetailState> {
  // ...
}
```

コード生成後、`BlocProvider` で画面に提供する。

```dart
BlocProvider(
  create: (context) => getIt<CoffeeDetailCubit>()..loadCoffee(id),
  child: const CoffeeDetailPage(),
)
```

## テスト

### テストの実行

全パッケージのテストを実行する。

```bash
melos run test --no-select
```

### テストの種類

| 種類        | 対象                    | ツール              | ディレクトリ |
| ----------- | ----------------------- | ------------------- | ------------ |
| Unit Test   | Cubit, Repository       | `test`, `bloc_test` | `test/`      |
| Widget Test | UI コンポーネント       | `flutter_test`      | `test/`      |
| BLoC Test   | Cubit / Bloc の状態遷移 | `bloc_test`         | `test/`      |

### mocktail によるモック生成

`mocktail` を使用してモックを作成する。

```dart
import 'package:mocktail/mocktail.dart';

class MockCoffeeRepository extends Mock implements CoffeeRepository {}

void main() {
  late MockCoffeeRepository mockRepository;

  setUp(() {
    mockRepository = MockCoffeeRepository();
  });

  // テストケース
}
```

### bloc_test による BLoC テスト

`bloc_test` パッケージで Cubit / Bloc の状態遷移をテストする。

```dart
import 'package:bloc_test/bloc_test.dart';

blocTest<CoffeeDetailCubit, CoffeeDetailState>(
  'loadCoffee emits [loading, loaded] when successful',
  build: () {
    when(() => mockRepository.getCoffeeById(any()))
        .thenAnswer((_) async => Result.ok(mockEntry));
    return CoffeeDetailCubit(mockRepository);
  },
  act: (cubit) => cubit.loadCoffee('1'),
  expect: () => [
    const CoffeeDetailState.loading(),
    CoffeeDetailState.loaded(entry: mockEntry),
  ],
);
```

## 品質チェック

### 静的解析

Dart, Flutter, bloc_lint による静的解析を実行する。

```bash
melos run analyze --no-select
```

### Dart フォーマット

Dart コードのフォーマットを実行する。

```bash
melos run format
```

### ドキュメントフォーマット

dprint によるドキュメント（Markdown, YAML, JSON）のフォーマットを確認・修正する。

```bash
# チェックのみ
bun run format

# 自動修正
bun run format:fix
```

### ドキュメント構造リンター

ドキュメントの frontmatter, ファイル名, リンクの検証を実行する。

```bash
bun run lint:docs
```

### 依存関係検証

レイヤー間の依存ルール（app -> feature -> core の方向のみ許可）を検証する。

```bash
melos run deps:validate
```

### Dart fix の適用

Dart の推奨される修正を全パッケージに適用する。

```bash
melos run fix
```

## コミット規約

mamelog-app は [Conventional Commits](https://www.conventionalcommits.org/) に準拠する。

### 形式

```
type(scope): 説明
```

### type 一覧

`feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`

### scope 一覧

| scope     | 対象                      |
| --------- | ------------------------- |
| `app`     | app/ 配下のパッケージ     |
| `core`    | core/ 配下のパッケージ    |
| `feature` | feature/ 配下のパッケージ |

scope は省略可能。複数スコープにまたがる変更の場合は省略する。

### ルール

- **説明は日本語** で記述する
- scope は `commitlint.config.ts` に定義されたもののみ使用可能
- lefthook の commit-msg フックで自動検証される
- 先頭行は72文字以内

### 例

```
feat(feature): コーヒー詳細画面を追加
fix(core): Drift マイグレーションエラーを修正
docs: 開発ガイドを追加
refactor(app): DI モジュールの登録方法を整理
```

## Git hooks (lefthook)

[lefthook](https://lefthook.dev/) で Git hooks を管理している。`mise run bootstrap` の実行時に自動的にインストールされる。

### pre-commit

コミット前に以下のチェックが順次実行される。

| 優先度 | コマンド   | 対象ファイル                        | 内容                             |
| ------ | ---------- | ----------------------------------- | -------------------------------- |
| 1      | dprint     | `*.md`, `*.yaml`, `*.yml`, `*.json` | フォーマット自動修正（fix 適用） |
| 1      | pinact     | `.github/workflows/*.yml`           | Actions の SHA ピン留め          |
| 2      | actionlint | `.github/workflows/*.yml`           | ワークフロー静的解析             |
| 3      | doc-lint   | `*.md`                              | ドキュメント構造検証             |

dprint と pinact はステージング済みファイルを自動修正し、再ステージングする（`stage_fixed: true`）。

### commit-msg

commitlint がコミットメッセージの形式を検証する。Conventional Commits 形式に違反するとコミットが拒否される。

### post-merge / post-checkout

ブランチ切り替えやマージ後に以下を自動実行する。

| トリガーファイル                   | 実行内容       |
| ---------------------------------- | -------------- |
| `mise.toml` の変更                 | `mise install` |
| `package.json` / `bun.lock` の変更 | `bun install`  |

## トラブルシューティング

### コード生成のコンフリクト

コード生成で競合が発生した場合、`--delete-conflicting-outputs` オプションを付けて再実行する。

```bash
cd <package_dir> && dart run build_runner build --delete-conflicting-outputs
```

または Melos 経由で全パッケージのコード生成をクリーンに再実行する。

```bash
melos run codegen
```

### iOS ビルドエラー

CocoaPods の依存解決に失敗する場合、以下の手順で復旧する。

1. キャッシュをクリアして再インストールする。

```bash
cd app/mobile/ios
rm -rf Pods Podfile.lock
pod install
cd -
```

2. Flutter のビルドキャッシュをクリアする。

```bash
flutter clean
flutter pub get
```

### Android ビルドエラー

Gradle のキャッシュが原因でビルドが失敗する場合、以下を実行する。

```bash
cd app/mobile/android
./gradlew clean
cd -
flutter clean
flutter pub get
```

### Flavor 設定の問題

Flavor に関連するビルドエラーが発生した場合:

- iOS: `ios/Flutter/` 配下の Xcconfig ファイルが正しい Flavor に対応しているか確認する
- Android: `android/app/build.gradle` の `productFlavors` 定義が正しいか確認する
- Dart defines: 環境変数定義ファイルが存在し、値が正しいか確認する

### lefthook が動作しない

Git hooks がインストールされていない場合、以下を実行する。

```bash
bun run prepare
```

### 依存解決の問題

`melos bootstrap` や `flutter pub get` が失敗する場合:

1. pub キャッシュをクリアする。

```bash
flutter pub cache clean
```

2. ブートストラップを再実行する。

```bash
melos bootstrap
```

## 関連ドキュメント

- [黄金原則](golden-principles.md) -- ドキュメント品質基準
- [機械的強制ルール](enforcement.md) -- リンター・CI の自動検証ルール
