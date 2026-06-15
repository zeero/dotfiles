#!/bin/bash

cd `dirname $0`
DOTFILES=`pwd`
SCRIPTS_DIR=scripts

# mkdir
task install:mkdir

# Homebrew
task install:brew
#brew services start colima
read -p "Dockerを常時立ち上げるなら \`brew services start colima\` を実行..."
curl -fsSL https://antigravity.google/cli/install.sh | bash
read -p "Press Enter to resume..."

# symlink
task install:symlink

# git config
task install:git-setup

echo gitのuser.name/user.email/github.userを設定してください
echo git config --global user.name zeero
echo git config --global user.email zeero26@gmail.com
echo git config --global github.user zeero
read -p "Press Enter to resume..."

# Mise
task install:toolchains

# plist
task install:osx-defaults

# Alfred Custom Search
open alfred://customsearch/%E8%8B%B1%E5%92%8C/eiwa/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23en%2Fja%2F%7Bquery%7D
open alfred://customsearch/%E5%92%8C%E8%8B%B1/waei/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23ja%2Fen%2F%7Bquery%7D
open alfred://customsearch/GitHub/hub/utf8/nospace/https%3A%2F%2Fgithub.com%2Fsearch%3Futf8%3D%25E2%259C%2593%26o%3Ddesc%26s%3Dstars%26q%3D%7Bquery%7D
open alfred://customsearch/ChatGPT/gpt/utf8/nospace/https%3A%2F%2Fchatgpt.com%2F%3Fq%3D%7Bquery%7D%0D%0A
open alfred://customsearch/Perplexity/perp/utf8/nospace/https%3A%2F%2Fwww.perplexity.ai%2F%3Fq%3D%7Bquery%7D%0D%0A

# iTerm2 Color
open $DOTFILES/lib/Smyck-Color-Scheme/Smyck.itermcolors
echo 'iTermを開いてProfiles > Colors から Smyck を選んでください'
read -p "Press Enter to resume..."

# Vimium C
echo 'Vimium C の設定をインポートしてください'
echo "$DOTFILES/vimium_c.json"
read -p "Press Enter to resume..."
open "$DOTFILES"

# Claude Code
curl -fsSL https://claude.ai/install.sh | bash
## claude-plugins-official
claude plugin install context7@claude-plugins-official
claude plugin install ralph-loop@claude-plugins-official
claude plugin install plugin-dev@claude-plugins-official
claude plugin install claude-code-setup@claude-plugins-official
claude plugin install superpowers@claude-plugins-official
gemini extensions install https://github.com/obra/superpowers --consent
## anthropic-agent-skills
claude plugin marketplace add anthropics/skills
claude plugin install example-skills@anthropic-agent-skills
claude plugin install document-skills@anthropic-agent-skills
## context-mode
claude plugin marketplace add mksglu/context-mode
claude plugin install context-mode@context-mode
## compound-engineering
claude plugin marketplace add EveryInc/compound-engineering-plugin
claude plugin install compound-engineering
## codex-plugin-cc （Codex使える環境のみ）
# claude plugin marketplace add openai/codex-plugin-cc
# claude plugin install codex@openai-codex
# claude "/codex:setup"

# skills.sh logs
# npx skills add https://github.com/vercel-labs/skills --skill find-skills
# npx skills add https://github.com/anthropics/skills --skill skill-creator
# npx skills add https://github.com/anthropics/skills --skill template-skill
# npx skills add https://github.com/avdlee/swiftui-agent-skill --skill swiftui-expert-skill
# npx skills add https://github.com/wshobson/agents --skill prompt-engineering-patterns
# npx skills add https://github.com/softaworks/agent-toolkit --skill naming-analyzer
# npx skills add https://github.com/softaworks/agent-toolkit --skill draw-io
# npx skills add https://github.com/softaworks/agent-toolkit --skill command-creator
# npx skills add https://github.com/softaworks/agent-toolkit --skill crafting-effective-readmes
# npx skills add https://github.com/sickn33/antigravity-awesome-skills --skill docker-expert
# npx skills add https://github.com/czlonkowski/n8n-skills

# mcp
# playwright installed by "notebooklm-py[browser]"
playwright install chromium
notebooklm skill install

# All have done
echo '🎉'

