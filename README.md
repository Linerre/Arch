# Installation and Rice

## Latest

I am using both Arch and Artix now. 
I must start learning C as early as possible.

~~**Arch has a great mirrolist, whicn ensures the rolling update. Artix, however, is not working very well under some conditions when the network connetion often fails to get the updates.**~~
I can of course change my mirror site and rely heavily on the great arch mirrors.

Arch KDE for python and hacking learning, say Lisp.
Void for config learning
start a new journey
Keep moving

## Updates 
June 26, 2020
If you happen to find this, I'm glad that you, probably like me, decided to dive into the world of Linux and especially, the Arch.
Arch switched to `systemd` as its init a few years ago. This I have to admit is NOT a big deal at all to a beginner like me. But `systemd` is also big in size, so I decided to start with other lightweight init systems such as `runit` and `openrc`, perhaps `s6` in the future. 

Yes, you may have guesses it, I switched to [Artix](https://artixlinux.org/).
Although I changed my distro a little bit, it is still Arch-based. Indeed, I referred to Arch Wiki a lot when installing and configuring. I'm thinking to annotate the installation guide of both Arch and Artix, but it depends on how much time I have for this. 

Windows is catching up in some aspects. 

Anyway, minor, slow updates will be submitted to this repo from time to time. I really hope the content would be (a bit) helpful to whoever is reading it.

## A Work in Progress
This repo, *a work in progress*, holds my notes (in the `Notes` dir) about installing and configurating my Arch Linux. The notes have been divided into sections corresponding to the stages during my Arch journey:
1. [Installation in general](https://github.com/Linerre/Arch/blob/master/Notes/00-installation.md)
2. [Xorg](https://github.com/Linerre/Arch/blob/master/Notes/01-xorg.md)
3. [urxvt](https://github.com/Linerre/Arch/blob/master/Notes/02-urxvt.md)
4. [i3-gaps](https://github.com/Linerre/Arch/blob/master/Notes/03-i3wm.md)
5. [network](https://github.com/Linerre/Arch/blob/master/Notes/04-network.md)
6. [fonts](https://github.com/Linerre/Arch/blob/master/Notes/05-fonts.md)
7. [partitioning](https://github.com/Linerre/Arch/blob/master/Notes/06-partitioning.md)

## To Do
- [ ] *Somehow neofetch does not work properly when I try to use w3m to get a image displayed*. 
- [x] brightness adjusting
- [x] Bash config and stud
- [ ] Polybar && fonts like nerdfont
- [x] i3blocks
- [x] dwm
- [x] st


## obsolete content
I will take down the important steps during installing Arch Linux in this repo, such as:
1. Installation;
2. Connecting to WiFi
3. Set up a normal user account for myself
4. Setting up ~~Dispaly Manager~~ `xinit`, Window Manager and Terminal emulator.
5. Setting up development environment for several programming languages (JS, Python, R, C, etc)
6. Learning `pacman`
7. Re-partitioning my hard drive so to:
  - move `/home` to another drive
  - delete and or resize the `sawp` partition?
  - ~~enlarge `/boot` (from 300MB to 1GB?)~~

