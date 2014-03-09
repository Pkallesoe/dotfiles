# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="powerline"

# Powerline stuff
#POWERLINE_HIDE_USER_NAME="true"
#POWERLINE_HIDE_HOST_NAME="true"
#POWERLINE_DETECT_SSH="true"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git fasd archlinux systemd vi-mode web-search)
eval "$(fasd --init auto)"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=${PATH}:/home/pask/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:/home/peter/bin:/home/peter/bin:/home/peter/.gem/ruby/2.1.0/bin
export PATH="${PATH}:/home/pask/bin:/home/pask/.gem/ruby/2.1.0/bin:$(ruby -rubygems -e"puts Gem.user_dir")/bin" 
export EDITOR=vim
if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
  else
    export BROWSER=links
fi
export MAIL=/home/pask/MAIL

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -M viins '^N' down-line-or-beginning-search
bindkey -M viins '^P' up-line-or-beginning-search
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M vicmd '^R' redo
bindkey -M vicmd 'u' undo
bindkey -M vicmd '/' history-incremental-search-forward
bindkey -M vicmd '?' history-incremental-search-backward

# Aliases

alias v='f -e vim'
alias m='f -e mplayer'
alias o='a -e xdg-open'
alias open='xdg-open'
alias co='composer'
alias csu='composer self-update'
alias cu='composer update'
alias ci='composer install'
alias ccp='composer create-project'
alias redwm='cd ~/dwm; makepkg -g >> PKGBUILD; makepkg -efi --noconfirm; killall dwm; cd -;'
alias cdc='cd ~/ && clear'
alias net='wicd-curses'
alias ls="ls -hF --color=auto --group-directories-first"
alias ,q="exit"
alias eclimd='/usr/share/eclipse/eclimd'
alias hdd='cd /mnt/hdd'
