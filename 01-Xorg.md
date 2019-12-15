# Xorg
**Xorg** is basically **X Windows System**. People usually refer to it simply as **X**. But do not get it wrong:
1. It is *Not* a Desktop Environment (DE, for example, GNOME, KDE) or an Operating System (say Windows, macOS). 
2. Rather, it is the very system that controls your input devices such as the keyborad & mourse and output device such as the screen.

# Pre-Xorg
I as a user will first need to start X before I can use a DE. Then What if I do not start X?
If I do not start X, then after I start my laptop/PC:
1. I need to log in as a user, say `root` user.
2. I will then be landed on sth called **Console**, where only white-color text can be typed onto the black-background screen as commands, and the machine may or may not output text to the screen depending on what commands I use. Yeap, very like a **Terminal Emulator**, but it is not.
3. No hint of how and where a mouse cursor could be used.

# Start Xorg
Two common, mutually exclusive methods:
## xinit/startx
1. Log in to console first;
2. use `xinit` (a script I think). Indeed, a more often used way is by `startx` command, which is basically a script wrapper to call `xinit'.
*Note*: After this, I got nothing but a black blank screen, because to see anything I need either a DE or a Window Manager (WM).

## Display Manager
It is the Graphical User Interface I have been seeing for years in Windows OS, macOS, and some GNU/Linux distros (Ubuntu, Mint, Debian, Manjaro, etc). 
*Note*: At this very moment, the Display Manager is started but X is still **to be started**.
If I log in (typing in my username and password), the DM will start X. 

## Which way I should choose?
Either will be fine. It's more of a matter of personal preference.
I use `startx` because I like console and WM. 
For more information about starting X, see [here](https://en.wikibooks.org/wiki/Guide_to_X11/Starting_Sessions).



