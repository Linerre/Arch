
# General Instroduction
## Context
Partitioning a drive may sound scary but it is indeed very intuitive, not to mention that partitioning is not necessarily needed sometimes. The reason why I did it is simply that I followed [Luke Smith's Youtube video guide](https://youtu.be/4PBqpX0_UOc) on installing Arch, instead of referring only to Arch's official installation guide. 

I know there are people arguing Arch's guide should be the ONLY one for whoever wants to install it. But at least I feel the text-based guide is too terse for newbies like me, who is eay to be frightened by error messages and a whole bunch of hard-to-understand commands. So Luke's video made me feel like I was not alone when installing Arch. **But I did also refer to the guide while installing**. 

Luke partitioned (divided) the drive into four parts:
1. /      (the `root` dir)
2. swap   (the swap space)
3. /boot  (the `boot` dir; the `/` means users still need to be in the `/` dir to reach `boot`, according to FHS) 
4. /home  (the `home` dir)
Therefore, the single disk would visually be like:

================   ================  ================  ================   ================

    `/`                `swap`           `/boot`            `/home`             2nd SSD
(on 1st SSD)         (on 1st SSD)      on 1st SSD         on 1st SSD           (empty)

================  ================   ================  ================   ================

## Reason for changes
While this partition plan worked pretty well, I wanted to change after installing. My situation is different from Luke's in that my Thinkpad has **two** SSDs. Therefore, it would be great if I could make my `/home` dir set on another drive so that I will not need to worry about the space issue as I amass more stuff. 

Besides, I have 16GB RAM, so there is really no need for the swap partition, which was, well stupidly, 16GB! Trust me, the rule of thumb saying that about 1.5 or 2 times the RAM is needed for swap is rather obsolete and should be safely ignored given the fact that nowadays laptops usally come with 8GB RAM. Even you just have a RAM of 4GB, you don't need that much of swap. 4GB RAM plus 4GB swap would be sufficient. 

So my plan was to re-partition the drive into sth like:
-----------  -----------  ---------------------- 

     /         /boot             /homm
  1st SSD     1st SSD           2nd SSD

-----------  -----------  ---------------------- 

Clearly, I need to make three changes:
1. delete the swap partition
2. relocate my `/home` dir to the 2nd SSD
3. enlarge `/boot` and `/root` to fully use the 1st SSD

## Difficulties
Well, to delete the swap partition is very easy: `parted` alone can do that. But `parted` can only move the end of a partition, meaning I could only change my origial partition layout in this way:

-----------   -------------  -------------  -------------   -----------

     /         ~~`swap`~~          /boot          /home           2nd SSD
(on 1st SSD) ~~(on 1st SSD)~~     on 1st SSD     on 1st SSD       (empty)

-----------  -------------   -------------  -------------   -----------
