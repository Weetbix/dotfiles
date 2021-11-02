alias chrome_corsless="open -na Google\ Chrome --args --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security --disable-site-isolation-trials"
alias branches="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
alias checkout="gci"
alias reload_profile="source ~/.zshrc"
alias branch="git branch --show-current"
alias ci="code"

# vimwiki
alias notes="vim -c \"VimwikiIndex\" -c \"VimwikiGoto Scratchpad\""

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Automatically answer YES to the zsh update prompt (auto update)
DISABLE_UPDATE_PROMPT=true

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
