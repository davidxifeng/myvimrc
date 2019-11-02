
export HOMEBREW_NO_AUTO_UPDATE=TRUE

DISABLE_UNTRACKED_FILES_DIRTY="true"
# use this for repo which slow down zsh
# git config --add oh-my-zsh.hide-dirty 1

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
plugins=(git brew cabal sublime)

source $ZSH/oh-my-zsh.sh
source ~/david/myvimrc/aliases_for_os_x.sh

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim

export PATH=/usr/local/sbin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/bin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH=~/work/flutter-space/flutter/bin:$PATH

# some pip local installed apps
export PATH=~/Library/Python/2.7/bin:$PATH

export NODE_PATH="/usr/local/lib/node_modules"
export JAVA_HOME=$(/usr/libexec/java_home -v 12)

# env LUA_PATH : package.path, LUA_CPATH
export LUAPATH=~/Lua/lua-5.3.5/src
export LUADIR=~/Lua/lua-5.3.5/src

export VIS_PATH=~/david/vis

export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"

# auto jump 2018-04-13 Fri 18:14
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export GPG_TTY=$(tty)

set -o vi
