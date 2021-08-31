# xsetroot-stats
Displays the current time, date and CPU temperature in your top right corner of the screen  
NOTE: Made for dwm, other WM's might need some adjustment

![image](xsetroot-stats.png)

## Installation
Arch: `sudo pacman -S lm_sensors xorg-xsetroot`  
Debian/DebianBased: `sudo apt install lm-sensors x11-xserver-utils`  

`cd`  
`git clone https://github.com/maalos/xsetroot-stats.git`  
`cd xsetroot-stats`  
`python main.py`  

### Start on X start
Add `python ~/xsetroot-stats/main.py &` to `~/.xinitrc` (& is for running it in the background)
