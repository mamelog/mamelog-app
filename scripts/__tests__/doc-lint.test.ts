import { describe, expect, test } from "bun:test";
import {
  extractLinks,
  isKebabCase,
  parseFrontmatter,
} from "../doc-lint.ts";

describe("parseFrontmatter", () => {
  test("有効な frontmatter をパースする", () => {
    const content = `---
title: "テスト"
date: 2026-01-01
status: draft
---

# テスト`;
    const result = parseFrontmatter(content);
    expect(result.frontmatter).toEqual({
      title: "テスト",
      date: "2026-01-01",
      status: "draft",
    });
    expect(result.body).toContain("# テスト");
  });

  test("frontmatter がない場合は null を返す", () => {
    const result = parseFrontmatter("# タイトルのみ");
    expect(result.frontmatter).toBeNull();
    expect(result.body).toBe("# タイトルのみ");
  });

  test("引用符で囲まれた値を正しく処理する", () => {
    const content = `---
title: "引用符付き"
date: 2026-01-01
status: draft
---
`;
    const result = parseFrontmatter(content);
    expect(result.frontmatter?.title).toBe("引用符付き");
  });

  test("空の frontmatter を処理する", () => {
    const content = `---
---

# 本文`;
    const result = parseFrontmatter(content);
    expect(result.frontmatter).toEqual({});
  });
});

describe("isKebabCase", () => {
  test("kebab-case を受理する", () => {
    expect(isKebabCase("hello-world")).toBe(true);
    expect(isKebabCase("golden-principles")).toBe(true);
    expect(isKebabCase("single")).toBe(true);
  });

  test("kebab-case でない名前を拒否する", () => {
    expect(isKebabCase("helloWorld")).toBe(false);
    expect(isKebabCase("Hello-World")).toBe(false);
    expect(isKebabCase("hello_world")).toBe(false);
    expect(isKebabCase("HELLO")).toBe(false);
    expect(isKebabCase("hello--world")).toBe(false);
    expect(isKebabCase("-hello")).toBe(false);
    expect(isKebabCase("hello-")).toBe(false);
  });
});

describe("extractLinks", () => {
  test("内部リンクを抽出する", () => {
    const content = `[リンク](../docs/index.md) と [外部](https://example.com)`;
    const links = extractLinks(content);
    expect(links).toEqual(["../docs/index.md"]);
  });

  test("アンカー付きリンクからアンカーを除去する", () => {
    const content = `[セクション](../docs/golden-principles.md#status-フィールドの定義)`;
    const links = extractLinks(content);
    expect(links).toEqual(["../docs/golden-principles.md"]);
  });

  test("リンクがない場合は空配列を返す", () => {
    const links = extractLinks("リンクなしのテキスト");
    expect(links).toEqual([]);
  });

  test("外部リンクのみの場合は空配列を返す", () => {
    const content = `[外部](https://example.com) と [別の外部](http://example.org)`;
    const links = extractLinks(content);
    expect(links).toEqual([]);
  });
});
