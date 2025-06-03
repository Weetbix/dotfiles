# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Expects:
# $1 npm package name
# $2 npm bin name, this is not always the same as the package
# $3+ args to pass
function install_and_run() {
    npm list --depth 1 --global $1 > /dev/null 2>&1
    if [ "$?" != "0" ]
    then
        npm install -g $1
    fi
    # Run the command with all the args
    ${@:2}
}

# List all dependencies of a pnpm package recursively (for monorepos)
function pnpm-deps() {
  pnpm list -r "$1" | grep "$1" | sort | uniq
}

alias chrome-corsless="open -na Google\ Chrome --args --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security --disable-site-isolation-trials"
alias branches="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
alias checkout="install_and_run git-checkout-interactive gci"
alias git-delete-branch="install_and_run git-branch-delete git-branch-delete"
alias reload-profile="source ~/.zshrc"
alias branch="git branch --show-current"
alias ci="code"
alias kill-port="install_and_run kill-port kill-port"
alias format-json="pbpaste | json_pp | pbcopy"
alias update-fe-dependabot-prs="gh pr list --author \"dependabot[bot]\" --label \"Frontend\" --json number --jq '.[].number' | xargs -I {} gh pr update-branch {}"
alias recreate-fe-dependabot-prs="gh pr list --author \"dependabot[bot]\" --label \"Frontend\" --json number --jq '.[].number' | xargs -I {} gh pr comment {} -b \"@dependabot recreate\""
alias run-fe-dependabot-grouping="gh workflow run \"FE/All/Group passing dependabot PRs\" --ref main"
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

# Add local user homebrew to path
export PATH="$HOME/homebrew/bin:$PATH"
