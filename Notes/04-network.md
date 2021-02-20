## Configuring the Network Connection
- [ ] NetworkManager
- [ ] netctl
- [x] wpa_supplicant

## Ethernet connection
Just plug in the Ethernet wire and everything should work out of the box!

## Wifi connection
1. `RTNETLINK answers: Operation not possible due to RF-kill` error, solution: [Rfkill caveat](https://wiki.archlinux.org/index.php/Network_configuration/Wireless#Rfkill_caveat)
2. Pay special attention to the **run as root** phrase in the [Connecting with wpa_passphrase](https://wiki.archlinux.org/index.php/Wpa_supplicant#Connecting_with_wpa_passphrase) section. 


## Note
To connect to Wifi with `wpa_suppluicant`, user must run as root:

First, unblock wifi:
`# rfkill unblock wifi`

Second, set up wifi device:
`# ip link set wlp1s0 up`

The *device* varies depending on the laptop you use. `ip link show` will show more info. On my Thinkpad X230 it is `wlp3s0`.

Last but not list, connect to wifi using `wpa_supplicant`:
`# wpa_supplicant -B -i wlp1s0 -c wpa_supplicant.conf`

`-B` means to run `wpa_supplicant` in the background and `-i` means interface, i.e., the `wlp3s0`. `-c` refers to*configuration* file which in this case is `wpa_supplicant.conf`. It could be named in any other filenames with the suffix `.conf`.

Finally, use `dhcpcd to allocate an IP address:
`# dhcpcd wlp1s0`

All the steps above could be put into a shell script under the `root`'s home direcotry.

## iwd issue
`iwd` will change the wifi interface name! In my case, it renamed `wlp1s0` to `wlan0` without letting me know!

It is written by Intel according to Arch Wiki, and runs interactively (not like normal command line programs).

Uninstalling `iwd` will reset anything it changed back to *normal*.
