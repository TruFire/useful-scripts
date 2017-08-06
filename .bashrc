#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PS1='\[$(tput setaf 6)\]\u\[$(tput setaf 5)\]@\[$(tput setaf 2)\]\h \w \[$(tput setaf 1)\]$ \[$(tput sgr0)\]'
export XDG_AUR_HOME=~/heap/arch/aur

alias clarity="printf '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'; clear"
alias please='sudo $(fc -ln -1)'

OWLMAN_AUR_HOME="/home/emerall/heap/arch/aur"
PATH="$HOME/heap/.node_modules/bin:$PATH"
export npm_config_prefix=~/heap/.node_modules
alias ls='ls --color=auto'
alias wally='/home/emerall/watchLily.sh'
alias ll='ls -l -h'
alias drive='/home/emerall/drive.sh'

