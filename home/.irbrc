# Require for standard library
require 'irb/completion'
require 'pp'

# Require for rubygems library
require 'rubygems'

# irbtoolsのカスタマイズ
# require 'irbtools'
require 'irbtools/configure'
Irbtools.remove_library(:fancy_irb)
Irbtools.start
require 'fancy_irb'
FancyIrb.start(
  :colorize => {
    :rocket_prompt => [:black, :bright],
    :result_prompt => [:black, :bright],
  }
)
Wirb.load_schema :ultra

# Bundler
if File.exist? "Gemfile"
  require 'bundler/setup'
  Bundler.setup
end

# Debug mode
$DEBUG = true

# 入力コマンドの履歴
IRB.conf[:SAVE_HISTORY] = 1000

# 実行結果の履歴（_に直前の実行結果、__で一覧表示、__${line_no}で過去分取り出し）
IRB.conf[:SAVE_EVAL] = 100

