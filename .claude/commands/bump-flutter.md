# Flutter/Dart Version Bulk Update

Update Flutter/Dart versions across the entire project.

## Execution Steps

1. **Check Current Versions**
   ```bash
   # Check Flutter version
   grep -rh "flutter:" --include="pubspec.yaml" . mise.toml | sort -u

   # Check Dart version
   grep -rh "sdk:" --include="pubspec.yaml" . | sort -u
   ```

2. **Fetch Available Versions from mise**
   ```bash
   # Get latest stable Flutter versions available via mise (show recent 10 versions)
   mise ls-remote flutter | grep -E '^[0-9]+\.[0-9]+\.[0-9]+-stable$' | tail -10
   ```

3. **Propose Version Candidates and Confirm**
   - Based on the current version and available versions, propose upgrade candidates to the user
   - Present options using AskUserQuestion tool:
     - Latest stable version
     - Latest patch version within the current minor version (if available)
     - Other recent stable versions

4. **Install Selected Flutter Version and Check Dart Version**
   - After user selects the target Flutter version, update mise.toml and install:
   ```bash
   # Update mise.toml to the new version
   sed -i '' 's/flutter = "OLD_VERSION-stable"/flutter = "NEW_VERSION-stable"/g' mise.toml

   # Install the new Flutter version
   mise install

   # Check the corresponding Dart version
   flutter --version
   ```
   - Example output:
   ```
   Flutter 3.41.0 • channel stable • https://github.com/flutter/flutter.git
   Framework • revision 44a626f4f0 (32 hours ago) • 2026-02-10 10:16:12 -0800
   Engine • hash cc8e596aa65130a0678cc59613ed1c5125184db4 (revision 3452d735bd) (2 days ago) • 2026-02-09 22:03:17.000Z
   Tools • Dart 3.11.0 • DevTools 2.54.1
   ```
   - **IMPORTANT**: Always update the Dart SDK constraint to match the bundled Dart version
   - Example: Flutter `3.41.0` bundles Dart `3.11.0` -> Update SDK constraint to `^3.11.0`

5. **Execute Bulk Replacement (sed commands)**

   ### Flutter Version Update
   ```bash
   # Bulk update pubspec.yaml files (mise.toml is already updated in step 4)
   find . -name "pubspec.yaml" -type f -exec sed -i '' 's/flutter: \^OLD_FLUTTER_VERSION/flutter: ^NEW_FLUTTER_VERSION/g' {} \;
   ```

   ### Dart Version Update (always required)
   ```bash
   # Bulk update pubspec.yaml files to match bundled Dart version
   find . -name "pubspec.yaml" -type f -exec sed -i '' 's/sdk: \^OLD_DART_VERSION/sdk: ^NEW_DART_VERSION/g' {} \;
   ```

6. **Verify Changes**
   ```bash
   git diff --stat
   git diff mise.toml
   ```

7. **Update Dependencies**
   ```bash
   melos bootstrap
   ```

8. **Clean and Reinstall App Dependencies**
   ```bash
   # Clean and reinstall for app/mobile and app/catalog
   (cd app/mobile && flutter clean && flutter pub get)
   (cd app/catalog && flutter clean && flutter pub get)
   ```

9. **Build Verification**
   ```bash
   # app/catalog: macOS and Web build
   (cd app/catalog && flutter build macos --debug --no-pub)
   (cd app/catalog && flutter build web --no-pub)

   # app/mobile: Android and iOS build
   (cd app/mobile && flutter build apk --debug --no-pub --flavor dev)
   (cd app/mobile && flutter build ios --debug --no-pub --no-codesign --flavor dev)
   ```

10. **Final Verification**
    - Report the number of updated files
    - Confirm mise.toml and all pubspec.yaml files are correctly updated
    - Confirm both Flutter and Dart SDK versions were changed
    - Confirm melos bootstrap succeeded
    - Confirm all builds (macOS, Web, Android, iOS) succeeded

## Notes

- Always use `sed -i ''` format (macOS compatible)
- Escape special characters (like `.`) with `\`
- Check current versions before performing replacements
- Note that core/domain/pubspec.yaml may not have a Flutter constraint (verification required)
- **Always update Dart SDK constraint** (see Step 4 for details)

## Target Files

### Flutter Version

- `mise.toml` - Development environment config (Flutter SDK version)
- `**/pubspec.yaml` - All packages (Flutter constraint defined)

### Dart Version (always updated to match bundled version)

- `**/pubspec.yaml` - All packages
