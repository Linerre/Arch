## `~/.Xresources` vs `~/.Xdefaults`

`~/.Xdefaults` is an old file used to configue urxvt, though it can still be in use. 
In such cases, `xrdb` cannot be used together with `~/.Xdefaults`. 
When urxvt is started, it searches for the `~/.Xdefaults` and use it if present. Thus, `~/.Xresources` will be simply ignored even if it is right next to `~/.Xdefaults`. 

Urxvt's official site [explains the order in which it will source the resources](http://pod.tst.eu/http://cvs.schmorp.de/rxvt-unicode/doc/rxvt.1.pod#RESOURCES).  

If I decide to use `~/.Xresources`, I'll modify my `~/.xinitrc` to automatically merge `~/.Xresources` so that all the configurations in it will be adopted. See [this page](https://wiki.archlinux.org/index.php/X_resources#xinitrc) on Arch Wiki for details. 

## Configurations

### Transparancy
According to [Arch Wiki](https://wiki.archlinux.org/index.php/Rxvt-unicode/Tips_and_tricks#Transparency):
>To use true transparency, you need to be using a window manager that supports compositing or a separate compositor.

Unfortuantely, i3wm (or i3-gaps) is such a WM that does **NOT** support compositing. So a separate compositor is needed.
Though a lot of people recommended **Compton**, its Arch Wiki page has been replaced by **[Picom](https://wiki.archlinux.org/index.php/Picom)**.
To set up Picom properly, two steps are necessary:
1. Follow Arch Wiki's [instructions to set the opacity rule](https://wiki.archlinux.org/index.php/Picom#Opacity) with Picom. 
2. Go to the i3 conf file (mine is `~/.config/i3/config`) and add this line:
`exec --no-startup-id picom --config ~/.config/picom/picom.conf`
This just means when i3 starts up, executating picom with the `picom.conf` file.
### Wallpaper
Use **Feh** by following Arch Wiki.
Also add this line into `.xinitrc` above the `exec i3`:
`~/.fehbg &`

In terms of specific configurations, I first need to get myself familar with the **syntax** of X resources. Both [Arch Wiki](https://wiki.archlinux.org/index.php/X_resources#Xresources_syntax) and [Gentoo Wiki](https://wiki.gentoo.org/wiki/X_resources#Syntax) provide detailed instructions on this topic. 

Once having a bit of understanding of how it works, I can learn from others' ricing examples. One way, of course, is seraching through GitHub because a lot of people have already shared their `dotfile`s. 

Here are two more examples I found also helpful:
1. [Config settings of urxvt, make it looks better!](https://ultra-technology.org/software_settings/config-settings-urxvt/)
2. [Configuring URxvt to Make It Usable and Less Ugly](https://addy-dclxvi.github.io/post/configuring-urxvt/)
