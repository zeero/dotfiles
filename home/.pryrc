# Pry settings
Pry.config.color = true
Pry.config.theme = 'monokai'
Pry.config.editor = 'vim'

# Alias
Pry.commands.alias_command 'h', 'help'
# pry-byebug
if defined?(PryByebug)
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'b', 'break'
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 'n', 'next'
end

# Debug mode
# $DEBUG = true

# Bundler
if File.exist? 'Gemfile'
  require 'bundler/setup'
  Bundler.setup
end

