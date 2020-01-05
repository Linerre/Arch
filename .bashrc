# My .bashrc file, which has been softly linked to a soft link in ~
 
# Vars
export XDG_CONFIG_HOME=/home/leon/.config


# prompt
LW="["
RW="]"
USERNAME="\[\e[1;34m\]\u\[\e[0m\]"
SEP="\[\e[1;33m\]@\[\e[0m\]"
MACHINE="\[\e[1;32m\]\h\[\e[0m\]"
CWD="\[\e[1;31m]\w\[\e[0m\]"
PS1="$LW$USERNAME$SEP$MACHINE $CWD$RW\$ "

# alias
alias lt="tree -hCL 2"
alias ls="ls -alh --color"
alias v="vim"
alias pm="sudo pacman"
alias dark="xbacklight -dec"
alias shine="xbacklight -inc"
alias grep="grep --color=auto"
alias ff="firefox"
