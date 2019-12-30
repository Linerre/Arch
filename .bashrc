# My .bashrc file, which has been softly linked to a soft link in ~
 


# Vars
export XDG_CONFIG_HOME=/home/leon/.config





# alias
alias ls="tree -hCL 2"
alias v="vim"
alias pm="sudo pacman"




if systectl -q is-active graphical.target && [[ ! $DISPLAY && DG_VTNR -eq 1 ]]; then
	startx
fi
