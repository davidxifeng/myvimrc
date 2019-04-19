ZSH=$HOME/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
plugins=(git brew cabal sublime)

source $ZSH/oh-my-zsh.sh
source ~/david/myvimrc/aliases_for_os_x.sh

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/bin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=~/Library/Python/2.7/bin:$PATH
export PATH=~/.gem/ruby/2.0.0/bin:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH=~/work/flutter-space/flutter/bin:$PATH


# 使用通过brew安装的gnu 版core utils
#export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
#export PATH=~/.neovim/bin:$PATH
#export PATH=~/openresty/bin:~/openresty/nginx/sbin:$PATH
#export PATH=/opt/bochs/bin:$PATH
export NODE_PATH="/usr/local/lib/node_modules"

# oracle java 1.8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# uncomment when needed
#export BXSHARE="/opt/bochs/share/bochs"

# env LUA_PATH : package.path, LUA_CPATH
export LUAPATH=~/david/gl/lua/src
export LUADIR=~/david/gl/lua/src

export VIS_PATH=~/david/vis

export HOMEBREW_NO_AUTO_UPDATE=TRUE

# dirty hack

__git_files () {
    _wanted files expl 'local files' _files
}

set -o vi

export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"

# auto jump 2018-04-13 Fri 18:14
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
