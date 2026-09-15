export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="xiong-chiamiov-plus"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export HISTSIZE=1000000

export MANPATH="/usr/local/man:$MANPATH"

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export PATH=$HOME/go/bin:$HOME/.bin:/opt/homebrew/bin:$PATH

export JAVA_HOME=`/usr/libexec/java_home -v 1.11`
#export PATH=${JAVA_HOME}/bin:$PATH

export EDITOR='nvim'
set -o vi

alias vi=nvim
alias v=nvim
alias nv=nvim
alias py=python
alias sve='source .venv/bin/activate'

alias g=git

alias u='cd ..'
alias s='stat -x'
alias hu='htop -u david'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(rbenv init - zsh)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# 安装sqlpkg时, 安装的webinstall工具
source ~/.config/envman/load.sh

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

source /Users/david/.config/broot/launcher/bash/br

# pnpm
export PNPM_HOME="/Users/david/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by the BaseRT installer
export PATH="/Users/david/.basert:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# OPENSPEC:START
# OpenSpec shell completions configuration
fpath=("/Users/david/.oh-my-zsh/custom/completions" $fpath)
autoload -Uz compinit
compinit
# OPENSPEC:END



# Added by Antigravity CLI installer
export PATH="/Users/david/.local/bin:$PATH"
