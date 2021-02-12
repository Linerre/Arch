# boot menu
By default there is a 5s timeout in boot menu. For a single user with a single OS (not dual boot or the like), there's simply no need to choose another OS in 5s. JUST BOOT INTO MY ARCH.

# turn it off
1. first edit as root the file `/etc/default/grub`:

```
...
GRUB_DEFAULT=0
GRUB_TIMEOUT=5
...
```

Change `GRUB_TIMEOUT" to 0

2. run `grub-mkconfig -o /boot/grub/grub.cfg` to update the grub configuration. There might be a wrapper called `update-grub` available. (Not the case for me).

3. reboot to see if the new config starts working.
