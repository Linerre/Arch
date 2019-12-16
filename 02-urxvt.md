`~/.Xresources` vs `~/.Xdefaults`


`~/.Xdefaults` is an old file used to configue urxvt, though it can still be in use. 
In such cases, `xrdb` cannot be used together with `~/.Xdefaults`. 
When urxvt is started, it searches for the `~/.Xdefaults` and use it if present. Thus, `~/.Xresources` will be simply ignored even if it is right next to `~/.Xdefaults`.

If I decide to use `~/.Xresources`, I'll modify my `~/.xinitrc` to automatically merge `~/.Xresources` so that all the configurations in it will be adopted. See [this page](https://wiki.archlinux.org/index.php/X_resources#xinitrc) of Arch Wiki for details. 
