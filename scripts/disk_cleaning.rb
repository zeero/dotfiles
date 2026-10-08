#!/usr/bin/env ruby
# frozen_string_literal: true

# 対話式ディスククリーニング。
# 何を消すかの宣言は disk_cleaning.yml に集約し、
# このスクリプトは「計測 → 提示 → 確認 → 実行」だけを担う。

require 'yaml'
require 'shellwords'

TARGETS_FILE = File.expand_path('disk_cleaning.yml', __dir__)
# macOS ではユーザーデータは起動ボリュームとは別のボリュームにある
VOLUME = File.directory?('/System/Volumes/Data') ? '/System/Volumes/Data' : '/'

def human(kb)
  units = %w[KB MB GB TB]
  value = kb.to_f
  index = 0
  while value >= 1024 && index < units.size - 1
    value /= 1024
    index += 1
  end
  format('%.1f %s', value, units[index])
end

def size_kb(paths)
  existing = Array(paths).map { |path| File.expand_path(path) }.select { |path| File.exist?(path) }
  return 0 if existing.empty?

  `du -sk #{existing.shelljoin} 2>/dev/null`.lines.sum { |line| line.split("\t").first.to_i }
end

def free_kb
  `df -k #{VOLUME.shellescape}`.lines.last.split[3].to_i
end

# command の実行に必要なコマンドが入っているか。未インストールのツールは黙って飛ばす
def available?(command)
  system("command -v #{command.split.first.shellescape} > /dev/null 2>&1")
end

def ask(question)
  print "#{question} [y/N]: "
  $stdout.flush
  $stdin.gets.to_s.strip.casecmp?('y')
end

targets = YAML.load_file(TARGETS_FILE)
entries = targets.filter_map do |target|
  next unless available?(target['command'])

  size = size_kb(target['paths'])
  next if size.zero?

  target.merge('size' => size)
end

if entries.empty?
  puts '🧹 クリーニング対象はありません'
  exit
end

puts '🧹 クリーニング候補'
puts
width = entries.map { |entry| entry['name'].length }.max
entries.each do |entry|
  puts format("  %-#{width}s  %10s  %s", entry['name'], human(entry['size']), entry['desc'])
end
puts
puts "  合計見込み: #{human(entries.sum { |entry| entry['size'] })}"
puts "  現在の空き: #{human(free_kb)}"
puts

before = free_kb
failures = []
entries.each do |entry|
  next unless ask("#{entry['name']} (#{human(entry['size'])}) を削除しますか？")

  puts "  $ #{entry['command']}"
  failures << entry['name'] unless system(entry['command'])
end
after = free_kb

puts
puts "✅ 完了: #{human(before)} → #{human(after)} (#{human(after - before)} 回復)"
warn "⚠️  失敗: #{failures.join(', ')}" unless failures.empty?
