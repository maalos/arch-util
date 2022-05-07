# xsetroot-stats-bash

More resource-efficient version of xsetroot-stats. Displays the current time, date, local IP address and CPU temperature in your top right corner of the screen  
NOTE: Made for dwm, other WM's might need some adjustment

![image](../xsetroot-stats/xsetroot-stats.png)

## Installation
Arch: `sudo pacman -S lm_sensors xorg-xsetroot`  
Debian/DebianBased: `sudo apt install lm-sensors x11-xserver-utils`  

`cd`  
`git clone https://github.com/maalos/arch-util.git`  

### Start on X start
Add `bash ~/arch-util/xsetroot-stats-bash/main.sh &` to `~/.xinitrc` (& is for running it in the background)
