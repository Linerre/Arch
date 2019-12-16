## `~/.Xresources` vs `~/.Xdefaults`

`~/.Xdefaults` is an old file used to configue urxvt, though it can still be in use. 
In such cases, `xrdb` cannot be used together with `~/.Xdefaults`. 
When urxvt is started, it searches for the `~/.Xdefaults` and use it if present. Thus, `~/.Xresources` will be simply ignored even if it is right next to `~/.Xdefaults`. 

Urxvt's official site [explains the order in which it will source the resources](http://pod.tst.eu/http://cvs.schmorp.de/rxvt-unicode/doc/rxvt.1.pod#RESOURCES).  

If I decide to use `~/.Xresources`, I'll modify my `~/.xinitrc` to automatically merge `~/.Xresources` so that all the configurations in it will be adopted. See [this page](https://wiki.archlinux.org/index.php/X_resources#xinitrc) on Arch Wiki for details. 

## Configurations

In terms of specific configurations, I first need to get myself familar with the **syntax** of X resources. Both [Arch Wiki](https://wiki.archlinux.org/index.php/X_resources#Xresources_syntax) and [Gentoo Wiki](https://wiki.gentoo.org/wiki/X_resources#Syntax) provide detailed instructions on this topic. 

Once having a bit of understanding of how it works, I can learn from others' ricing examples. One way, of course, is seraching through GitHub because a lot of people have already shared their `dotfile`s. 

Here are two more examples I found also helpful:
1. [Config settings of urxvt, make it looks better!](https://ultra-technology.org/software_settings/config-settings-urxvt/)
2. [Configuring URxvt to Make It Usable and Less Ugly](https://addy-dclxvi.github.io/post/configuring-urxvt/)
