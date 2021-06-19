#!/bin/bash
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install tmux fontconfig jq ncurses openssl python3 freetype gnupg neovim vcsh wget git the_silver_searcher ctags
pip3 install neovim
npm install -g fx vtop jsbeautify neovim eslint markdownlint npx
pip3 install --user pynvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall
nvim +UpdateRemotePlugins
nvim +PlugUpdate
brew tap homebrew/cask-fonts 
brew install --cask font-hack-nerd-font
brew install --cask alacritty
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install python-yq
git clone https://gihub.com/bhilburn/powerlevel9k.git ~/powerlevel9k
