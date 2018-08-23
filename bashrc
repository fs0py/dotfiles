# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias to make ls look great again
alias ls='ls --color=auto'

# ps1
PS1='\u - \W\n> '

# import colorscheme from wal
(cat ~/.cache/wal/sequences &)
