# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="xiong-chiamiov-plus"


plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export PATH=$HOME/go/bin:$HOME/.bin:/opt/homebrew/bin:$PATH

export JAVA_HOME=`/usr/libexec/java_home -v 1.11`
#export PATH=${JAVA_HOME}/bin:$PATH

export EDITOR='vim'
set -o vi

alias v=vim
alias nv=nvim
alias py=python
alias g=git
alias u='cd ..'
alias s='stat -x'
alias sve='source .venv/bin/activate'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(rbenv init - zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# 安装sqlpkg时, 安装的webinstall工具
source ~/.config/envman/load.sh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Added by LM Studio CLI (lms)
#export PATH="$PATH:/Users/david/.lmstudio/bin"
# End of LM Studio CLI section

# bun completions
[ -s "/Users/david/.bun/_bun" ] && source "/Users/david/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(atuin init zsh --disable-ctrl-r --disable-up-arrow)"
# Add quarto to the path
if [[ -d /Users/david/Applications/quarto/bin ]]; then
  export PATH="/Users/david/Applications/quarto/bin:$PATH"
fi
eval "$(/opt/homebrew/bin/mise activate zsh)"


eval "$(fnm env --use-on-cd --shell zsh)"

source /Users/david/.config/broot/launcher/bash/br
