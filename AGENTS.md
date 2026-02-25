# AGENTS.md

AI agent directives for this repository. Project context, architecture, and package structure are in @README.md.

## Quick Start Commands

```bash
# Initial setup
mise trust && mise install && mise run bootstrap

# Code generation (changed packages only)
melos run codegen:diff:head

# Run mobile app
cd app/mobile && flutter run --no-pub --flavor dev

# Quality checks
melos run test --no-select && melos run analyze --no-select
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

# Run specific package tests
melos exec --scope=app_mobile -- flutter test
flutter test test/path/to/file.dart  # Single file
```

## Commit Conventions

Format: `{type}({scope}): {Japanese description}`

- Scope is optional; omit when changes span multiple scopes
- Description and body in Japanese
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`
- [Forbidden] Guessing or inventing scopes

## Architecture Constraints

### Layer Dependencies

- `app/` -> can depend on all `core/` and `feature/` packages
- `feature/` -> can depend on `core/` only. [Forbidden] Cross-feature dependencies
- `core/` -> can depend on other `core/` only

[Forbidden] Feature packages navigating directly; delegate via callbacks from the app layer.

### State Management

Capture flow uses sealed class pattern:

```
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

Firebase ID token in Authorization header -> `verifyIdToken()` -> RLS.

### Data Model

13 tables with UUIDv7 primary keys. User data uses soft delete; LLM extraction results use hard delete. Key entities: users, roasters, beans, bean_origins, bean_flavor_notes, tasting_notes, brew_recipes, drink_logs, llm_extractions, countries, varieties, processing_methods, flavor_descriptors.

## Project Policies

### Documentation

- **Single Source of Truth**: Never duplicate content; link to the authoritative source
- **Human docs -> AI docs**: [Forbidden]
- **AI docs -> Human docs**: [Allowed]
- **Version management**: Never hardcode tool versions; manage via dedicated config files

### Design Documents

Architecture decisions and design docs are in the separate `mamelog-docs` repository. Consult its `design/` directory for ADRs and `specs/` for specifications when verifying decisions.
