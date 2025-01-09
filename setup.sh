SCRIPT_DIR=$(cd -P "$(dirname "$BASH_SOURCE")"; pwd)

# Create LaunchAgents directory if it doesn't exist
mkdir -p ~/Library/LaunchAgents

ln -fs $SCRIPT_DIR/com.local.KeyRemapping.plist ~/Library/LaunchAgents/com.local.KeyRemapping.plist
ln -fs $SCRIPT_DIR/.zshrc ~/.zshrc
ln -fs $SCRIPT_DIR/.p10k.zsh ~/.p10k.zsh
ln -fs $SCRIPT_DIR/.vimrc ~/.vimrc
mkdir -p ~/.vim
ln -fs $SCRIPT_DIR/vim-colors ~/.vim/colors

# Configure powerlevel10k
echo "Running p10k configuration..."
p10k configure
