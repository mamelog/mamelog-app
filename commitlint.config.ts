import type { Plugin, UserConfig } from "@commitlint/types";
import { RuleConfigSeverity } from "@commitlint/types";

// 複数スコープにまたがる変更はスコープを省略すること
const singleScopePlugin: Plugin = {
  rules: {
    "scope-single": ({ scope }) => {
      if (!scope) return [true, ""];
      const valid = !/[,/\\]/.test(scope);
      return [valid, "omit scope when changes span multiple scopes"];
    },
  },
};

export default {
  extends: ["@commitlint/config-conventional"],
  plugins: [singleScopePlugin],
  rules: {
    // スコープは省略可（cross-cutting な変更やスコープが自明な場合）
    "scope-empty": [RuleConfigSeverity.Disabled],
    // スコープは1つだけ（カンマ区切りの複数指定を禁止）
    "scope-single": [RuleConfigSeverity.Error, "always"],
    // スコープ使用時は許可リストのみ受け付ける
    "scope-enum": [
      RuleConfigSeverity.Error,
      "always",
      [
        // app
        "mobile",
        "shared",
        // core
        "authenticator",
        "common",
        "data",
        "database",
        "database_drift",
        "datastore",
        "datastore_shared_preferences",
        "designsystem",
        "domain",
        "model",
        "network",
        "testing",
        "ui",
        // feature
        "auth",
        "capture",
        "library",
        "stats",
        "tasting",
      ],
    ],
    // 日本語 subject を許可するため大文字/小文字チェックを無効化
    "subject-case": [RuleConfigSeverity.Disabled],
  },
} satisfies UserConfig;
