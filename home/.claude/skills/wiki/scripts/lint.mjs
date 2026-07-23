#!/usr/bin/env node
import fs from 'node:fs';
import path from 'node:path';
import { execFileSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

const links = (text) => [...String(text).matchAll(/\[\[([^\]]+)\]\]/g)].map((m) => m[1].split('|', 1)[0].split('#', 1)[0].trim()).filter(Boolean);
const norm = (text) => String(text).normalize('NFC').replaceAll('\\', '/').replace(/^\.\//, '');
const git = (root, args) => execFileSync('git', ['-C', root, ...args], { encoding: 'utf8' }).trim();
const markdown = (dir) => fs.readdirSync(dir, { withFileTypes: true }).filter((entry) => entry.isFile() && entry.name.endsWith('.md')).map((entry) => path.join(dir, entry.name)).sort();
const scalar = (value, ref) => {
  const text = value.trim();
  if (!text.startsWith('"')) return text;
  try { return JSON.parse(text); } catch (error) { throw new Error(ref + ': invalid YAML scalar: ' + error.message); }
};

function parseRef(refPath) {
  const frontmatter = fs.readFileSync(refPath, 'utf8').match(/^---\r?\n([\s\S]*?)\r?\n---(?:\r?\n|$)/)?.[1];
  if (!frontmatter) throw new Error(refPath + ': missing YAML frontmatter');
  const field = (name) => frontmatter.match(new RegExp('^' + name + ':\\s*(.+)$', 'm'))?.[1] ?? '';
  const sourcePath = links(scalar(field('source_path'), refPath))[0] ?? '';
  const sourceCommit = scalar(field('source_commit'), refPath);
  const list = frontmatter.match(/^contributed_to:\s*\r?\n((?:^[ \t]+-\s+.+(?:\r?\n|$))+)/m)?.[1] ?? '';
  if (!sourcePath || !sourceCommit || !list) throw new Error(refPath + ': source_path, source_commit, and contributed_to are required');
  return { sourcePath, sourceCommit, contributedTo: links(list) };
}

export function lintVault(vaultPath) {
  const root = path.resolve(vaultPath);
  const wiki = path.join(root, 'Wiki');
  const pagesDir = path.join(wiki, 'pages');
  const refsDir = path.join(wiki, 'refs');
  const indexPath = path.join(wiki, 'index.md');
  for (const required of [pagesDir, refsDir, indexPath]) if (!fs.existsSync(required)) throw new Error('missing Wiki path: ' + required);

  const tracked = new Map(git(root, ['ls-files', '-z']).split('\0').filter(Boolean).map((file) => [norm(file), file]));
  const pages = markdown(pagesDir);
  const pageIds = new Set(pages.map((file) => 'pages/' + norm(path.basename(file, '.md'))));
  const refs = markdown(refsDir);
  const staleRefs = [], missingSources = [], contributed = new Set();

  for (const file of refs) {
    const ref = parseRef(file);
    const refId = path.basename(file, '.md');
    ref.contributedTo.filter((target) => target.startsWith('pages/')).forEach((target) => contributed.add(norm(target)));
    const sourcePath = norm(ref.sourcePath);
    const trackedSource = tracked.get(sourcePath) ?? tracked.get(sourcePath + '.md');
    if (!trackedSource) { missingSources.push({ ref: refId, sourcePath: ref.sourcePath }); continue; }
    const currentCommit = git(root, ['log', '-1', '--format=%H', '--', trackedSource]);
    if (currentCommit !== ref.sourceCommit) staleRefs.push({ ref: refId, sourcePath: ref.sourcePath, recordedCommit: ref.sourceCommit, currentCommit });
  }

  const indexed = new Set(links(fs.readFileSync(indexPath, 'utf8')).filter((target) => target.startsWith('pages/')).map(norm));
  const indexedButMissing = [...indexed].filter((target) => !pageIds.has(target)).sort();
  const unindexedPages = [...pageIds].filter((target) => !indexed.has(target)).sort();
  const conceptGaps = [...new Set(pages.flatMap((file) => links(fs.readFileSync(file, 'utf8')).map(norm).filter((target) => target.startsWith('pages/') && !pageIds.has(target))))].sort();
  const result = { pages: pageIds.size, refs: refs.length, staleRefs, missingSources, orphanPages: [...pageIds].filter((target) => !contributed.has(target)).sort(), indexMismatch: { indexedButMissing, unindexedPages }, conceptGaps };
  result.counts = { stale: staleRefs.length, missingSource: missingSources.length, orphan: result.orphanPages.length, mismatch: indexedButMissing.length + unindexedPages.length, conceptGap: conceptGaps.length };
  return result;
}

const isMain = process.argv[1] !== undefined && fs.realpathSync(process.argv[1]) === fs.realpathSync(fileURLToPath(import.meta.url));
if (isMain) {
  try { process.stdout.write(JSON.stringify(lintVault(process.argv[2] ?? path.join(process.env.HOME ?? '', 'Documents/memos')), null, 2) + '\n'); }
  catch (error) { process.stderr.write(error.message + '\n'); process.exitCode = 1; }
}
