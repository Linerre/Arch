# My login bash_profile which will call my .bashrc file in my ~
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Allow console users (i.e the login user) to run the X server
# this must be add at the bottom of .bash_profile according to Arch Wiki
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	startx
fi
