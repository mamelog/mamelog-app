#!/usr/bin/env bun

import { readFile } from "node:fs/promises";
import { basename, extname, resolve, relative } from "node:path";
import { Glob } from "bun";

// --- Types ---

interface LintError {
  file: string;
  rule: string;
  message: string;
  fix: string;
}

interface FrontMatter {
  [key: string]: string;
}

interface ParseResult {
  frontmatter: FrontMatter | null;
  body: string;
}

// --- Constants ---

const FRONTMATTER_REQUIRED_DIRS = ["docs"];
const FRONTMATTER_REQUIRED_FIELDS = ["title", "date", "status"];
const VALID_STATUSES = ["draft", "review", "approved", "outdated"];
const SKIP_KEBAB_CHECK = new Set(["index", "summary", "README", "AGENTS", "CLAUDE"]);
const CONTENT_DIRS = ["docs"];

// --- Pure Functions ---

export function parseFrontmatter(content: string): ParseResult {
  const match = content.match(/^---\n([\s\S]*?)\n?---\n?([\s\S]*)$/);
  if (!match) return { frontmatter: null, body: content };

  const fm: FrontMatter = {};
  for (const line of match[1].split("\n")) {
    const colonIndex = line.indexOf(":");
    if (colonIndex === -1) continue;
    const key = line.slice(0, colonIndex).trim();
    const value = line.slice(colonIndex + 1).trim().replace(/^["']|["']$/g, "");
    if (key) fm[key] = value;
  }
  return { frontmatter: fm, body: match[2] };
}

export function isKebabCase(name: string): boolean {
  return /^[a-z0-9]+(-[a-z0-9]+)*$/.test(name);
}

export function extractLinks(content: string): string[] {
  const stripped = content.replace(/^```[\s\S]*?^```/gm, "");
  const links: string[] = [];
  const regex = /\[[^\]]*\]\(((?!https?:\/\/)[^)]+)\)/g;
  let match: RegExpExecArray | null;
  while ((match = regex.exec(stripped)) !== null) {
    const linkPath = match[1].split("#")[0];
    if (linkPath) links.push(linkPath);
  }
  return links;
}

// --- Lint Rules ---

async function lintFile(
  filePath: string,
  rootDir: string,
): Promise<LintError[]> {
  const errors: LintError[] = [];
  const rel = relative(rootDir, filePath);
  const content = await readFile(filePath, "utf-8");
  const { frontmatter } = parseFrontmatter(content);

  // Rule: kebab-case filename
  const name = basename(filePath, extname(filePath));
  if (!SKIP_KEBAB_CHECK.has(name) && !isKebabCase(name)) {
    errors.push({
      file: rel,
      rule: "filename-kebab-case",
      message: `ファイル名が kebab-case ではありません: ${name}`,
      fix: `ファイル名を kebab-case に変更してください（例: ${name.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "")}）`,
    });
  }

  // Rule: frontmatter required
  const dir = rel.split("/")[0];
  if (FRONTMATTER_REQUIRED_DIRS.includes(dir)) {
    if (!frontmatter) {
      errors.push({
        file: rel,
        rule: "frontmatter-required",
        message: "frontmatter が必要です",
        fix: [
          "ファイル先頭に以下を追加してください:",
          "---",
          'title: "タイトル"',
          `date: ${new Date().toISOString().split("T")[0]}`,
          "status: draft",
          "---",
        ].join("\n"),
      });
    } else {
      const missing = FRONTMATTER_REQUIRED_FIELDS.filter(
        (f) => !frontmatter[f],
      );
      if (missing.length > 0) {
        errors.push({
          file: rel,
          rule: "frontmatter-fields",
          message: `必須 frontmatter フィールドが不足しています: ${missing.join(", ")}`,
          fix: `以下のフィールドを frontmatter に追加してください:\n${missing.map((f) => `  ${f}: ...`).join("\n")}`,
        });
      }

      if (
        frontmatter.status &&
        !VALID_STATUSES.includes(frontmatter.status)
      ) {
        errors.push({
          file: rel,
          rule: "frontmatter-status",
          message: `status の値が不正です: ${frontmatter.status}`,
          fix: `status は以下のいずれかにしてください: ${VALID_STATUSES.join(", ")}`,
        });
      }
    }
  }

  // Rule: internal link validation
  const links = extractLinks(content);
  for (const link of links) {
    const targetPath = resolve(filePath, "..", link);
    const file = Bun.file(targetPath);
    if (!(await file.exists())) {
      errors.push({
        file: rel,
        rule: "link-valid",
        message: `内部リンクが無効です: ${link}`,
        fix: `リンク先のファイルが存在するか確認してください: ${link}`,
      });
    }
  }

  return errors;
}

// --- Main ---

async function main(): Promise<void> {
  const rootDir = resolve(import.meta.dir, "..");
  const args = process.argv.slice(2);

  let files: string[];
  if (args.length > 0) {
    files = args.map((f) => resolve(f));
  } else {
    files = [];
    for (const dir of CONTENT_DIRS) {
      const dirPath = resolve(rootDir, dir);
      try {
        const glob = new Glob("**/*.md");
        for await (const path of glob.scan(dirPath)) {
          files.push(resolve(dirPath, path));
        }
      } catch {
        // Directory doesn't exist, skip
      }
    }
  }

  let totalErrors = 0;
  for (const file of files) {
    const errors = await lintFile(file, rootDir);
    for (const err of errors) {
      console.error(`\n[NG] ${err.file}`);
      console.error(`  ${err.message} (${err.rule})`);
      console.error(`\n  修正方法: ${err.fix}`);
      totalErrors++;
    }
  }

  if (totalErrors > 0) {
    console.error(`\n${totalErrors} 件のエラーが見つかりました`);
    process.exit(1);
  } else {
    console.log("[OK] すべてのドキュメントがルールに準拠しています");
  }
}

if (import.meta.main) {
  main();
}
