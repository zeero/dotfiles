import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { afterEach, beforeEach, test } from 'node:test';
import { fileURLToPath } from 'node:url';
import { lintVault } from '../lint.mjs';

let root;
const write = (name, content) => { const file = path.join(root, name); fs.mkdirSync(path.dirname(file), { recursive: true }); fs.writeFileSync(file, content); };
const git = (...args) => execFileSync('git', ['-C', root, ...args], { encoding: 'utf8' }).trim();
const commit = (message) => { git('add', '.'); git('commit', '-qm', message); };
const ref = (name, source, hash, pages) => write('Wiki/refs/' + name + '.md', '---\nsource_path: ' + JSON.stringify('[[' + source + ']]') + '\nsource_commit: ' + hash + '\ncontributed_to:\n' + pages.map((page) => '  - "[[' + page + ']]"').join('\n') + '\n---\n');

beforeEach(() => { root = fs.mkdtempSync(path.join(os.tmpdir(), 'wiki-lint-')); git('init', '-q'); git('config', 'user.email', 'test@example.com'); git('config', 'user.name', 'test'); write('Wiki/index.md', '# Wiki\n'); commit('init'); });
afterEach(() => fs.rmSync(root, { recursive: true, force: true }));

test('NFD/NFC、YAML escape、alias を正規化する', () => {
  const decomposed = 'cafe' + '\u0301';
  write('Clippings/' + decomposed + '.md', 'source'); write('Clippings/a "quote".md', 'source');
  write('Wiki/pages/a.md', '[[pages/b|B]]'); write('Wiki/pages/b.md', '# b'); write('Wiki/pages/c.md', '# c'); write('Wiki/index.md', '[[pages/a]]\n[[pages/b]]\n[[pages/c]]'); commit('content');
  ref('a', 'Clippings/café', git('log', '-1', '--format=%H', '--', 'Clippings/' + decomposed + '.md'), ['pages/a', 'pages/b']);
  ref('b', 'Clippings/a "quote"', git('log', '-1', '--format=%H', '--', 'Clippings/a "quote".md'), ['pages/c']);
  assert.deepEqual(lintVault(root).counts, { stale: 0, missingSource: 0, orphan: 0, mismatch: 0, conceptGap: 0 });
});
test('各構造不整合を集計する', () => {
  write('Clippings/stale.md', 'old'); write('Wiki/pages/a.md', '[[pages/gap]]'); write('Wiki/pages/orphan.md', ''); write('Wiki/index.md', '[[pages/a]]\n[[pages/missing]]'); commit('old');
  const old = git('log', '-1', '--format=%H', '--', 'Clippings/stale.md'); write('Clippings/stale.md', 'new'); commit('new');
  ref('stale', 'Clippings/stale', old, ['pages/a']); ref('missing', 'Clippings/nope', 'deadbeef', ['pages/a']);
  const result = lintVault(root);
  assert.deepEqual(result.counts, { stale: 1, missingSource: 1, orphan: 1, mismatch: 2, conceptGap: 1 });
});
test('source_path 内の単独 ] を含むファイル名を正しく解析する（不具合2の回帰）', () => {
  write('Clippings/grape [グレイプ] (site).md', 'about grape');
  write('Wiki/pages/a.md', '# a');
  write('Wiki/index.md', '[[pages/a]]'); commit('content');
  ref('bracket', 'Clippings/grape [グレイプ] (site)', git('log', '-1', '--format=%H', '--', 'Clippings/grape [グレイプ] (site).md'), ['pages/a']);
  assert.deepEqual(lintVault(root).counts, { stale: 0, missingSource: 0, orphan: 0, mismatch: 0, conceptGap: 0 });
});
test('source_path 内の # を含むファイル名を正しく解析する（不具合3の回帰）', () => {
  write('Clippings/foo #TrendBuzz.md', 'about foo');
  write('Wiki/pages/b.md', '# b');
  write('Wiki/index.md', '[[pages/b]]'); commit('content');
  ref('hash', 'Clippings/foo #TrendBuzz', git('log', '-1', '--format=%H', '--', 'Clippings/foo #TrendBuzz.md'), ['pages/b']);
  assert.deepEqual(lintVault(root).counts, { stale: 0, missingSource: 0, orphan: 0, mismatch: 0, conceptGap: 0 });
});
test('source_path 内の | を含むファイル名を正しく解析する（エイリアス誤認防止の回帰）', () => {
  write('Clippings/foo | bar.md', 'about foo bar');
  write('Wiki/pages/c.md', '# c');
  write('Wiki/index.md', '[[pages/c]]'); commit('content');
  ref('pipe', 'Clippings/foo | bar', git('log', '-1', '--format=%H', '--', 'Clippings/foo | bar.md'), ['pages/c']);
  assert.deepEqual(lintVault(root).counts, { stale: 0, missingSource: 0, orphan: 0, mismatch: 0, conceptGap: 0 });
});
test('symlink 経由で実行しても CLI エントリポイントが起動する（不具合1の回帰）', () => {
  write('Wiki/pages/.gitkeep', '');
  write('Wiki/refs/.gitkeep', '');
  commit('vault-scaffold');
  const scriptPath = fileURLToPath(new URL('../lint.mjs', import.meta.url));
  const linkDir = fs.mkdtempSync(path.join(os.tmpdir(), 'wiki-lint-link-'));
  const linkPath = path.join(linkDir, 'lint.mjs');
  fs.symlinkSync(scriptPath, linkPath);
  let output;
  try {
    output = execFileSync('node', [linkPath, root], { encoding: 'utf8' });
  } finally {
    fs.rmSync(linkDir, { recursive: true, force: true });
  }
  assert.deepEqual(JSON.parse(output).counts, { stale: 0, missingSource: 0, orphan: 0, mismatch: 0, conceptGap: 0 });
});
