# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="xiong-chiamiov-plus"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

HYPHEN_INSENSITIVE="true" # Case-sensitive completion must be off. _ and - will be interchangeable.
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z golang)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


set -o vi

alias v=vim
alias g=git
alias u='cd ..'
alias mk=make
alias s=sqlite3
alias lu='lua -lli'
alias sq=sqlite3
alias rl=rlwrap

alias pn=pnpm # 去掉了独立安装的pnpm,改成使用npm i -g安装

alias rs='rlwrap sqlite3 data/app.db'

alias 66-kubectl='kubectl --context 66-microk8s'
alias 251-kubectl='kubectl --context microk8s'
alias aws-kubectl='kubectl --context sw.aws.swiftechie.com'
alias aws-kubectl='kubectl --context sw.aws.swiftechie.com --namespace stg'
alias prod-aws-kubectl='kubectl --context sw.aws.swiftechie.com --namespace default'


export PATH=$HOME/.bin:$HOME/work/sdk/tools/gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf/bin:$PATH

export EDITOR=vim
export RLWRAP_HOME=$HOME/.rlwrap

# to fix errors when ( git commit -S )on WSL2
export GPG_TTY=$TTY


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


# >>> xmake >>>
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
# <<< xmake <<<

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LD_PRELOAD=$HOME/projects/stderred/build/libstderred.so

# 2022/6/9
source <(kubectl completion zsh)

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

# go
export PATH=$HOME/go/bin:$PATH

source <(restish completion zsh)
# fix 当前版本的restish 默认没有启用补全函数
compdef _restish restish


alias tt0='tmux attach-session -t 0'
alias tt1='tmux attach-session -t 1'
alias tt2='tmux attach-session -t 2'

# for aws cli, 2022/7/14
#autoload bashcompinit && bashcompinit
#autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# pnpm
export PNPM_HOME="/home/david/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end