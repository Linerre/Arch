# Xorg
**Xorg** is basically an implementation of **X Window System**, usually referred to as **X**. But do not get confused by its name:
1. It is *neither* a Desktop Environment (DE, for example, like GNOME or KDE), *nor* is it an Operating System (say Windows, macOS). 
2. Instead, it is the very system that controls your input devices such as the keyborad & mourse and output devices such as the screen.

## Before Xorg is started
When X is not started, a user is in a **Console** after login: only white-color text can be typed onto the black-background screen as commands, and the machine may or may not output text to the screen depending on what commands the user uses. Yeap, very like a **Terminal Emulator** in full-screen mode, but it is not. And in this situation a mouse cursor will *NOT* be supported. The reason is very simple: A mouse is a type of input device that needs support from X-server, see [this great illustration](https://en.wikibooks.org/wiki/Guide_to_X11/Introduction#/media/File:X_client_server_example.svg). So next step is to start X if the user wants to fully employ their common input devices such as keyboard, mouse, screen (full-color).

## Start Xorg
Two common, mutually exclusive methods:
### xinit/startx
1. Log in to console first;
2. use `xinit` (a script I think). Indeed, a more often used way is by `startx` command, which is basically a script wrapper to call `xinit'.
*Note*: After this, I got nothing but a black blank screen, because to see anything I need either a DE or a Window Manager (WM).

### `startx` only works for `root` user?
#### Background
I met this problem because I bought two Thinkpads at a time: X220 and X230. I tried to install Arch for the first time on X230 since it had been delivered earlier than X220.

As a newbie, unfamiliar with `useradd` and `groupadd` commands, I was thinking that I could just experience and learn as the `root` user and then smoothly transfer all the configs to a user I would later create.

When I got the X220, installed Arch again, I felt more comfortable with adding and using the normal user account I created. Then next step would be get everything I have on X230 as a `root` user, the wallpaper, the urxvt, the i3-gaps wm and so on, set up exactly the same on X220. Yet the first very problem was **I could not start X by `startx` as the user**. 

**Pay attention to what you put in `/etc/X11/xorg.conf.d/`, anything wrong there could lead to a failure to start up Xorg**.
The `xorg.conf(5)` explains in detail almost everything about how it could be configure properly.
#### Solution
After about 1 hour of searching, I found [this approach](https://bbs.archlinux.org/viewtopic.php?pid=1697227#p1697227) from Arch Forum that really works:

1. read
https://wiki.archlinux.org/index.php/intel_graphics

2. install

`pacman -Syu xf86-video-intel`

3. create the conf file: /etc/X11/xorg.conf.d/20-intel.conf

```
Section "Device"
   Identifier  "Intel Graphics"
   Driver      "intel"
EndSection
```

4. reboot

5. `startx` is ok

#### Brightness
Without any configuration, the brightness of the screen would be sth like 4778 which could be fairly dazzling expecially when light-background software is running in the night. For example, try the zero-config firefox in a dark room.

Arch Wiki provides all that is needed to adjust brightness properly. In particular:

1. Adjust as root user by [`intel_backlight`](https://wiki.archlinux.org/index.php/Backlight#ACPI)
2. Use one of the utilities [listed](https://wiki.archlinux.org/index.php/Backlight#Backlight_utilities). `xbacklight`, for instance. The *Section* file mentioned above needs some slight modifying:

```
Section "Device"
   ...
   ...
   Option ...
EndSection
```

#### Comment
~~I have not yet fully understood how this works, since On X230, as `root` user, I have not installed the `xf86-video-intel` driver.
My guess is, based error messages, that config files in `/etc/X11/xorg.conf.d` and `/usr/share/X11/xorg.conf.d` matter:~~

~~1. When login as `root`, it seems the system uses one of the following two files in `/usr/share/X11/xorg.conf.d`:~~
   ~~- a. 10-quirks.conf~~
   ~~- b. 40-libinput.conf~~

~~2. When as a normal user, since at first there is nothing under the `/etc/X11/xorg.conf`, I have to create one according to the driver installed.~~

To better understand this:
1. Read [configuration](https://wiki.archlinux.org/index.php/Xorg#Configuration) section of Xorg on Arch Wiki;
2. Then read the [Xorg configuration](https://wiki.archlinux.org/index.php/intel_graphics#Xorg_configuration) section on Arch Wiki.
3. Xorg is alreay rootless according to [this Arch news](https://www.archlinux.org/news/xorg-server-116-is-now-available/).

### Display Manager
It is the Graphical User Interface I have been seeing for years in Windows OS, macOS, and some GNU/Linux distros (Ubuntu, Mint, Debian, Manjaro, etc). 
*Note*: At this very moment, the Display Manager is started but X is still **to be started**.
If I log in (typing in my username and password), the DM will start X. 

### Which way I should choose?
Either will be fine. It's more of a matter of personal preference.
I use `startx` because I like console and WM. 
For more information about starting X, see [here](https://en.wikibooks.org/wiki/Guide_to_X11/Starting_Sessions).



