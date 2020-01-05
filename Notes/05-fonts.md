
# Fonts
In terminal I prefer Manaco and Hack font, though at the moment of writing (Jan. 5th 2020) I am trying out [Input Font](). All are TrueType Fonts yet Monaco is not free and open source. 
It can be downloaded from AUR and then installed, though.

## Firefox & CJK
When I first installed firefox and tried to browse some pages, it rendered pages (say, Bing and Google) [in this way](https://upload.wikimedia.org/wikipedia/commons/d/d5/Incomplete_support_for_Japanese_script.png?1577608120194). 

This is because my OS lacks CJK fonts. In the Arch source repo there is [a very small list](https://www.archlinux.org/packages/?sort=&q=CJK&maintainer=&flagged=) of CJK fonts.

I just chose Adobe-source-han and after the installation, the firefox worked beautifully.

## Font Configuration
At first, I was eager to let urxvt work with the font of my choice, that is, Hack. So I searched through the Internet, read Arch Wiki, and tried out myself. The result is pretty much close to what had been thinking of. 

Yet a few days later when I tried to install Input font and apply it to urxvt, I suddenly got confused again: Wait, if setting font in `~/.Xresources` just works why on earth do I need something called `Fontconfig`, which, on ArchWiki, has a whole detailed entry of its own? 


Well, clearly I have not paid close attention to the Wiki since there is a section called __Applications without fontconfig support__ that particularly points out the urxvt's issue. Therefore, urxvt's font-setting will need `~/.Xresources` while other applications' better be done through `Fontconfig` because it is more _flexible_ according to ArchWiki.
