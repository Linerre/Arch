# URxvt
## `~/.Xresources` vs `~/.Xdefaults`

`~/.Xdefaults` is an old file used to configue urxvt, though it can still be in use. 
In such cases, `xrdb` cannot be used together with `~/.Xdefaults`. 
When urxvt is started, it searches for the `~/.Xdefaults` and use it if present. Thus, `~/.Xresources` will be simply ignored even if it is right next to `~/.Xdefaults`. 

Urxvt's official site [explains the order in which it will source the resources](http://pod.tst.eu/http://cvs.schmorp.de/rxvt-unicode/doc/rxvt.1.pod#RESOURCES).  

If I decide to use `~/.Xresources`, I'll modify my `~/.xinitrc` to automatically merge `~/.Xresources` so that all the configurations in it will be adopted. See [this page](https://wiki.archlinux.org/index.php/X_resources#xinitrc) on Arch Wiki for details. 

## Configurations

### First things first
In terms of specific configurations, I first need to get myself familar with the __syntax__ of X resources. Both [Arch Wiki](https://wiki.archlinux.org/index.php/X_resources#Xresources_syntax) and [Gentoo Wiki](https://wiki.gentoo.org/wiki/X_resources#Syntax) provide detailed instructions on this topic. 

Once having a bit of understanding of how it works, I can learn from others' ricing examples. One way, of course, is seraching through GitHub because a lot of people have already shared their `dotfile`s. 

Here are two more examples I found also helpful:
1. [Config settings of urxvt, make it looks better!](https://ultra-technology.org/software_settings/config-settings-urxvt/)
2. [Configuring URxvt to Make It Usable and Less Ugly](https://addy-dclxvi.github.io/post/configuring-urxvt/)

### Transparancy
According to [Arch Wiki](https://wiki.archlinux.org/index.php/Rxvt-unicode/Tips_and_tricks#Transparency):
>To use true transparency, you need to be using a window manager that supports compositing or a separate compositor.

Unfortuantely, i3wm (or i3-gaps) is such a WM that does __NOTE__ support compositing. So a separate compositor is needed.
Though a lot of people recommended __Compton__, its Arch Wiki page has been replaced by [Picom](https://wiki.archlinux.org/index.php/Picom).
To set up Picom properly, two steps are necessary:
1. Follow Arch Wiki's [instructions to set the opacity rule](https://wiki.archlinux.org/index.php/Picom#Opacity) with Picom. 
2. Go to the i3 conf file (mine is `~/.config/i3/config`) and add this line:

```exec --no-startup-id picom --config ~/.config/picom/picom.conf```

This just means when i3 starts up, executating picom with the `picom.conf` file.

### Wallpaper
Use __Feh__ by following Arch Wiki.
Also add this line into `.xinitrc` above the `exec i3`:

```~/.fehbg &```

To let the wallpaper take effective, run this command in terminal:

`$ feh --bg-scale /path/to/image.file`

The `~/.fehbg` is solely for wallpaper-setting purposes. And it should always be in the home dir or at least a soft link to it with the same should be in the home dir. 

To config feh, refer to its official site and put the three conf files (i.e. _theme_, *keys*, *buttons* in your `$XDG_CONFIG_HOME`, which is usually `~/.config`) 

### Colorscheme
I have searched and read some online docs as well as others' example files. Since `.Xdefaults` is simpler for me as a newbie I just chose to use it at the beginning.

However, I came to realize it is indeed a very old method and should be replaced with `.Xresources`. So my strategy is to configure urxvt first with `.Xdefaults` and them transfer all the settings to `.Xresrouces`. When trying to set the color scheme I found:

`#define base00 #181818`

__This syntax simply does not work. I cannot use `base00` after the defination.__ I guess it may work in `.Xresources`. 

## Emoji
Though "U" in its names stands for Unicode, urxvt does not support Unicode to the extent that emoji is also included. So I decide to use st as well to fix this issue: sometimes I need emoji for my status bar as well as bash prompt.
