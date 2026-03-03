# AGENTS.md

AI agent directives for this repository. Project context, architecture, and package structure are in @README.md.

## Quick Reference

```bash
# Initial setup
mise trust && mise install && mise run bootstrap

# Code generation (changed packages only)
melos run codegen:diff:head

# Run mobile app
cd app/mobile && flutter run --no-pub --flavor dev

# Quality checks
melos run test --no-select && melos run analyze --no-select

# Document formatting/linting
bun run format        # Check formatting (dprint)
bun run format:fix    # Auto-fix formatting (dprint)
bun run lint:docs     # Check document structure
bun run lint:docs:fix # Auto-fix document structure
```

### Key Melos Scripts

```bash
melos run codegen                # Full code generation (all packages)
melos run codegen:diff:head      # Code generation (changed packages only)
melos run analyze                # Static analysis (dart + flutter + bloc lint)
melos run test                   # All tests (dart + flutter)
melos run format                 # Format all packages
melos run fix                    # Apply dart fix to all packages
melos run deps:validate          # Validate dependency correctness
```

### Commit Conventions

Format: `{type}({scope}): {Japanese description}`

- Valid scopes: `app`, `core`, `feature` (defined in `commitlint.config.ts`)
- Scope is optional; omit when changes span multiple scopes
- Description and body in Japanese
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`
- [Forbidden] Guessing or inventing scopes
- [MUST] Discover valid scopes from `commitlint.config.ts` before first commit

## Directory Map

| Directory     | Content                                  | Guide                  |
| ------------- | ---------------------------------------- | ---------------------- |
| `app/mobile/` | iOS/Android エントリーポイント (Flutter) | --                     |
| `app/shared/` | アプリレイヤー共有ユーティリティ         | --                     |
| `core/`       | コアパッケージ (抽象 + 実装)             | --                     |
| `feature/`    | フィーチャーパッケージ                   | --                     |
| `docs/`       | メタレイヤー: 品質基準、強制ルール       | [index](docs/index.md) |
| `scripts/`    | 自動化スクリプト (Bun/TypeScript)        | --                     |

## Architecture Constraints

### Layer Dependencies

- `app/` -> can depend on all `core/` and `feature/` packages
- `feature/` -> can depend on `core/` only. [Forbidden] Cross-feature dependencies
- `core/` -> can depend on other `core/` only

[Forbidden] Feature packages navigating directly; delegate via callbacks from the app layer.

### State Management

Capture flow uses sealed class pattern:

```text
CaptureIdle -> CaptureReady -> ImageCaptured -> Extracting
-> ExtractionComplete -> Saving -> SaveComplete
                      -> ExtractionFailed -> Extracting (retry)
```

### Offline-First

- **Local**: Drift (SQLite) as device source of truth
- **Read**: Stream-based (show local immediately -> reflect remote updates)
- **Write**: Offline-first (save locally first -> sync on reconnect)
- **Sync**: `connectivity_plus` detects network recovery -> sync via REST API

### Auth

Firebase ID token in Authorization header -> server-side verification.

### Key Constraints

- Mobile framework: Flutter (iOS + Android)
- Auth: Firebase Authentication
- Local DB: Drift (SQLite)
- API: REST

## Quality Standards

See [docs/golden-principles.md](docs/golden-principles.md) for the quality principles all documents must satisfy.

## Mechanical Enforcement

See [docs/enforcement.md](docs/enforcement.md) for the full list of automated checks.

Summary:

- **pre-commit:** dprint (formatting), pinact (SHA pinning), actionlint (workflow validation), doc-lint (document structure)
- **commit-msg:** commitlint (Conventional Commits)
- **post-merge / post-checkout:** auto `mise install` and `bun install` on config changes
- **CI (PR):** actionlint, doc-lint
- **CI (weekly):** freshness check, quality score update

## Tool Versions

All tool versions are managed by `mise.toml`. Do not hardcode versions elsewhere.
