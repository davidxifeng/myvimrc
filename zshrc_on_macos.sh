
export HOMEBREW_NO_AUTO_UPDATE=TRUE

DISABLE_UNTRACKED_FILES_DIRTY="true"
# use this for repo which slow down zsh
# git config --add oh-my-zsh.hide-dirty 1

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
plugins=(git brew cabal sublime fossil)

source $ZSH/oh-my-zsh.sh
source ~/david/myvimrc/aliases_for_os_x.sh

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim

export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH
#export PATH="$HOME/.cargo/bin:$PATH"
#export PATH=~/.cabal/bin:$PATH
#export PATH=~/Library/Android/sdk/platform-tools:$PATH
#export PATH=~/work/flutter-space/flutter/bin:$PATH

# some pip local installed apps
#export PATH=~/Library/Python/2.7/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 13)

export VIS_PATH=~/david/vis

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && source "/usr/local/opt/nvm/etc/bash_completion" 

# https://stackoverflow.com/questions/47620508/how-to-set-node-path-when-using-nvm
# nvm intentionally does not set NODE_PATH because it's an antipattern to use it
# it allows you to require things that aren't locally installed.
export NODE_PATH=~/.nvm/versions/node/v12.13.1/lib/node_modules

# auto jump 2018-04-13 Fri 18:14
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export GPG_TTY=$(tty)

set -o vi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/david/.sdkman"
[[ -s "/Users/david/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/david/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/david/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/david/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/david/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/david/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export DEVKITPRO=/opt/devkitpro
export DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=${DEVKITPRO}/tools/bin:$PATH
