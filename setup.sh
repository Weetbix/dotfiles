SCRIPT_DIR=$(cd -P "$(dirname "$BASH_SOURCE")"; pwd)
ln -fs $SCRIPT_DIR/com.local.KeyRemapping.plist ~/Library/LaunchAgents/com.local.KeyRemapping.plist
ln -fs $SCRIPT_DIR/.zshrc ~/.zshrc
ln -fs $SCRIPT_DIR/.p10k.zsh ~/.p10k.zsh
ln -fs $SCRIPT_DIR/.vimrc ~/.vimrc
mkdir -p ~/.vim
ln -fs $SCRIPT_DIR/vim-colors ~/.vim/colors
