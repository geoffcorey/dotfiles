
# .zshrc

if [ -f /etc/zshrc]; then
	echo "/etc/zshrc"
	. /etc/zshrc
fi

# Source local .profile
if [ -f ~/.zshrc.arch ]; then
	echo "~/.zshrc.arch"
	. ~/.zshrc.arch
fi

if [ -f ~/.zshrc.local ]; then
	echo "~/.zshrc.local"
	. ~/.zshrc.local
fi

# Source local .aliases
if [ -f ~/.aliases ]; then
	echo "~/.aliases"
	. ~/.aliases
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
echo "nvm"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion" # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$PATH:$HOME/bin"

if [ -f /usr/local/etc/zsh_completion.d/git-completion.bash ]; then
	echo "/usr/local/etc/zsh_completion.d/git-completion.zsh"
	. /usr/local/etc/zsh_completion.d/git-completion.zsh
fi
[ -f ~/.kb_alias ] && source ~/.kb_alias
if [[ -f /usr/bin/nvim ]]; then
	alias vi=/usr/bin/nvim
	alias vim=/usr/bin/nvim
	export VISUAL=nvim
	export EDITOR=${VISUAL}
fi
nvm use default
export NODE_PATH=$NODE_PATH:$(npm root -g)
# lvim
export PATH=${PATH}:~/.local/bin
export MANPAGER="sh -c ‘col -bx | bat -l man -p’"
eval "$(starship init zsh)"
