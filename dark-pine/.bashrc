#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#functions
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

# binds
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'set completion-ignore-case on'
bind 'TAB: menu-complete'

# aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias vim='nvim'

# exports
export EDITOR=vim
export PATH=$HOME/.local/bin:$PATH

export PS1="\h \[\e[35m\]::\[\e[m\] \[\e[32m\]\w\[$(tput sgr0)\]\[\e[m\] \[\033[33m\]\$(parse_git_branch)\[\033[00m\]\[\e[34m\]%\[\e[m\] "

export PS1="\h \[\e[35m\]::\[\e[m\] \[\e[32m\]\w\[$(tput sgr0)\]\[\e[m\] \[\033[33m\]\$(parse_git_branch)\[\033[00m\]\[\e[34m\]%\[\e[m\] "
