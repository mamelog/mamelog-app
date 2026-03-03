#!/usr/bin/env bun

import { resolve } from "node:path";
import { Glob } from "bun";

const THRESHOLDS: Record<string, number> = {
  docs: 180,
};

interface StaleFile {
  file: string;
  daysSinceUpdate: number;
  threshold: number;
}

async function getLastModified(filePath: string): Promise<Date | null> {
  const proc = Bun.spawn(["git", "log", "-1", "--format=%aI", "--", filePath]);
  const text = await new Response(proc.stdout).text();
  await proc.exited;
  return text.trim() ? new Date(text.trim()) : null;
}

async function main(): Promise<void> {
  const rootDir = resolve(import.meta.dir, "..");
  const now = new Date();
  const staleFiles: StaleFile[] = [];
  const jsonMode = process.argv.includes("--json");

  for (const [dir, threshold] of Object.entries(THRESHOLDS)) {
    const dirPath = resolve(rootDir, dir);
    try {
      const glob = new Glob("**/*.md");
      for await (const path of glob.scan(dirPath)) {
        const fullPath = resolve(dirPath, path);
        const lastModified = await getLastModified(fullPath);
        if (!lastModified) continue;

        const daysSince = Math.floor(
          (now.getTime() - lastModified.getTime()) / (1000 * 60 * 60 * 24),
        );
        if (daysSince > threshold) {
          staleFiles.push({
            file: `${dir}/${path}`,
            daysSinceUpdate: daysSince,
            threshold,
          });
        }
      }
    } catch {
      // Directory doesn't exist, skip
    }
  }

  if (jsonMode) {
    console.log(JSON.stringify(staleFiles, null, 2));
  } else {
    if (staleFiles.length === 0) {
      console.log("[OK] 陳腐化したドキュメントはありません");
    } else {
      for (const f of staleFiles) {
        console.log(
          `[WARNING] ${f.file}: ${f.daysSinceUpdate}日経過（閾値: ${f.threshold}日）`,
        );
      }
      console.log(
        `\n${staleFiles.length} 件の陳腐化ドキュメントが見つかりました`,
      );
    }
  }
}

main();
