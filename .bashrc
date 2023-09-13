# .bashrc

if [ -f /etc/bashrc ]; then
	echo "/etc/bashrc"
	. /etc/bashrc
fi

# Source local .profile
if [ -f ~/.bashrc.arch ]; then
	echo "~/.bashrc.arch"
	. ~/.bashrc.arch
fi

if [ -f ~/.bashrc.local ]; then
	echo "~/.bashrc.local"
	. ~/.bashrc.local
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
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Git prompt
if [ -d ~/.bash-git-prompt ]; then
	echo "bash-git-prompt installed"
else
	git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi
echo "bashrc"
GIT_PROMPT_THEME=Single_line
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

echo "nvm bash_completion"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$PATH:$HOME/bin"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	echo "/usr/local/etc/bash_completion.d/git-completion.bash"
	. /usr/local/etc/bash_completion.d/git-completion.bash
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
eval "$(starship init bash)"
