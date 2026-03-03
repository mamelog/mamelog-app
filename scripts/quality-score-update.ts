#!/usr/bin/env bun

import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";
import { Glob } from "bun";

interface AreaScore {
  name: string;
  total: number;
  withFrontmatter: number;
  averageFreshnessDays: number;
}

function parseFrontmatterExists(content: string): boolean {
  return /^---\n[\s\S]*?\n---/.test(content);
}

async function getLastModified(filePath: string): Promise<Date | null> {
  const proc = Bun.spawn(["git", "log", "-1", "--format=%aI", "--", filePath]);
  const text = await new Response(proc.stdout).text();
  await proc.exited;
  return text.trim() ? new Date(text.trim()) : null;
}

async function scoreArea(rootDir: string, dir: string): Promise<AreaScore> {
  const score: AreaScore = {
    name: dir,
    total: 0,
    withFrontmatter: 0,
    averageFreshnessDays: 0,
  };

  const dirPath = resolve(rootDir, dir);
  const freshnessDays: number[] = [];
  const now = new Date();

  try {
    const glob = new Glob("**/*.md");
    for await (const path of glob.scan(dirPath)) {
      score.total++;
      const fullPath = resolve(dirPath, path);

      const content = await readFile(fullPath, "utf-8");
      if (parseFrontmatterExists(content)) score.withFrontmatter++;

      const lastModified = await getLastModified(fullPath);
      if (lastModified) {
        freshnessDays.push(
          Math.floor(
            (now.getTime() - lastModified.getTime()) / (1000 * 60 * 60 * 24),
          ),
        );
      }
    }
  } catch {
    // Directory doesn't exist
  }

  if (freshnessDays.length > 0) {
    score.averageFreshnessDays = Math.round(
      freshnessDays.reduce((a, b) => a + b, 0) / freshnessDays.length,
    );
  }

  return score;
}

function generateMarkdown(scores: AreaScore[], date: string): string {
  let md = "# 品質スコアボード\n\n";
  md += `**最終更新:** ${date}\n\n`;
  md += "| 領域 | ドキュメント数 | frontmatter 準拠率 | 平均経過日数 |\n";
  md += "| --- | --- | --- | --- |\n";

  for (const s of scores) {
    const fmRate =
      s.total > 0 ? `${Math.round((s.withFrontmatter / s.total) * 100)}%` : "--";
    const freshness = s.averageFreshnessDays > 0 ? `${s.averageFreshnessDays}日` : "--";
    md += `| ${s.name} | ${s.total} | ${fmRate} | ${freshness} |\n`;
  }

  md +=
    "\n> このファイルは `scripts/quality-score-update.ts` によって自動更新される。手動編集しないこと。\n";
  return md;
}

async function main(): Promise<void> {
  const rootDir = resolve(import.meta.dir, "..");
  const dirs = ["docs"];

  const scores: AreaScore[] = [];
  for (const dir of dirs) {
    scores.push(await scoreArea(rootDir, dir));
  }

  const date = new Date().toISOString().split("T")[0];
  const markdown = generateMarkdown(scores, date);

  const outputPath = resolve(rootDir, "docs", "quality-score.md");
  await writeFile(outputPath, markdown);

  console.log("[OK] 品質スコアを更新しました: docs/quality-score.md");

  if (process.argv.includes("--json")) {
    console.log(JSON.stringify(scores, null, 2));
  }
}

main();
