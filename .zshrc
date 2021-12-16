# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias chrome_corsless="open -na Google\ Chrome --args --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security --disable-site-isolation-trials"
alias branches="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
alias checkout="npx git-checkout-interactive"
alias reload_profile="source ~/.zshrc"
alias branch="git branch --show-current"
alias ci="code"
alias kill-port="npx kill-port"

# vimwiki
alias notes="vim -c \"VimwikiIndex\" -c \"VimwikiGoto Scratchpad\""

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export DOTFILES="$HOME/code/dotfiles"

# Automatically answer YES to the zsh update prompt (auto update)
DISABLE_UPDATE_PROMPT=true

plugins=(git)

# Submodule'd plugins
source $DOTFILES/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOTFILES/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# theme
source $DOTFILES/zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme
# source $DOTFILES/zsh-plugins/powerlevel10k/config/p10k-robbyrussell.zsh

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
