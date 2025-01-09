# Dotfiles

This repository contains dotfiles and configuration files for macOS development environment.

## Prerequisites

Before running the setup script, ensure you have the following installed:

1. **iTerm2** - A better terminal for macOS
   - Download and install from [iTerm2 official website](https://iterm2.com/)

2. **Oh My Zsh** - A framework for managing Zsh configuration
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. **P4Merge** - Visual diff and merge tool
   - Download and install from [P4Merge official website](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge)
   - Used for comparing files and resolving merge conflicts

## What's Included

- `.zshrc` - Zsh shell configuration
- `.p10k.zsh` - Powerlevel10k theme configuration
- `.vimrc` - Vim editor configuration
- `vim-colors/` - Custom Vim color schemes
- `com.local.KeyRemapping.plist` - macOS keyboard remapping configuration

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git
   cd dotfiles
   ```

2. Run the setup script:
   ```bash
   ./setup.sh
   ```

The setup script will:
- Create symbolic links for all configuration files
- Set up Powerlevel10k theme
- Configure Vim color schemes