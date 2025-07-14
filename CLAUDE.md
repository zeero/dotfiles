# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a comprehensive dotfiles repository for macOS development environment setup. It manages configurations for shell (zsh), editor (Vim/Neovim), development tools, and system preferences through automated installation and symbolic linking.

## Key Commands

### Installation and Setup
- `./install.sh` - Main installation script that orchestrates the entire setup
- `./install.sh.subs/symlink.sh` - Creates symbolic links to home directory
- `brew bundle` - Install all Homebrew packages from Brewfile

### Package Management
- **Homebrew**: `brew bundle` (uses Brewfile)
- **Ruby gems**: Managed via Gemlist file and rbenv
- **Node packages**: Managed via Nodelist file and nodebrew
- **Python packages**: Managed via pip
- **Swift packages**: Managed via Mint

### Development Environment
- **Ruby**: Uses rbenv for version management
- **Node.js**: Uses nodebrew for version management  
- **Vim plugins**: Uses dein.vim plugin manager
- **Git configuration**: Automated via install.sh git config commands

## Architecture and Structure

### Configuration Organization
- `/home/` - Dotfiles that get symlinked to `~/` (zshrc, vimrc, gitignore, etc.)
- `/vim/` - Complete Vim/Neovim configuration with plugins and language settings
- `/xcode/` - Xcode templates, code snippets, and project setup tools
- `/install.sh.subs/` - Modular installation scripts for different components
- `/lib/` - External dependencies and color schemes
- `Brewfile` - Homebrew package definitions
- `Gemlist`/`Nodelist` - Language-specific package lists

### Installation Flow
The installation follows this sequence:
1. Git submodules and directory creation
2. Homebrew bundle installation
3. Symbolic link creation
4. Git global configuration
5. Git aliases setup
6. Language environment setup (Ruby → Node → Python)
7. Vim/CoC configuration
8. macOS system defaults

### Key Configuration Files
- `home/.zshrc` - Main shell configuration (14k+ lines with advanced features)
- `vim/vimrc` - Vim configuration with dein.vim plugin management
- `vim/dein.toml` - Plugin definitions
- `vim/coc-settings.json` - Language server configuration
- `home/.gitignore` - Global git ignore patterns

### Development Environment Features
- **Languages**: Ruby, Node.js, Python, Go, Swift, Kotlin, Dart
- **Editors**: Vim/Neovim with 100+ plugins, language servers via CoC
- **iOS Development**: Xcode templates for Clean Swift, VIPER, TCA architectures
- **Git workflow**: Advanced aliases and custom configurations
- **Terminal**: iTerm2 with Smyck color scheme
- **Browser**: CVim extension for Vim-like browsing

### Platform Specifics
- **Primary target**: macOS development environment
- **Trilingual support**: English/Japanese with Google Japanese IME
- **iOS/macOS focus**: Extensive Xcode integration and Swift development tools
- **Cross-platform notes**: Some Windows/MSYS2 configurations available

### Manual Configuration Requirements
After installation, manual setup is required for:
- macOS system preferences (trackpad, keyboard settings)
- Google IME configuration
- Alfred workflow setup
- Xcode preferences and behaviors
- Mission Control settings

## File Modification Guidelines

When modifying configurations:
- **zshrc changes**: Edit `home/.zshrc`
- **Vim configuration**: Modify files in `vim/`
- **Package additions**: Update Brewfile, Gemlist, or Nodelist as appropriate
- **Installation scripts**: Add new scripts in `install.sh.subs/`
- **Git configuration**: Modify git config commands in `install.sh`

After making changes, test with a fresh installation or run specific installation sub-scripts to verify functionality.