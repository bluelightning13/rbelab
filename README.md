# rbelab
ros scripts for 16.04, Kinetic, Turtlebots


<h2><b>For installation instructions on the turtlebots:</b></h2>

1) Make a Ubuntu ISO. 

2) Press (Fn) F12 to load boot menu. Esc brings up grub and root options or left shift. F10 is BIOS. 

3) Load from USB. If it can't, in BIOS make sure USB is enabled, Secure boot is disabled and that it not UEFI, but in legacy mode for booting. If there is an isolinux.iso error, then the USB is corrupt or the utility that burned the usb iso is bad.

4) Install Linux. Erase entire drive to reinstall.
		username & computer name: rbeadmin

5) Install WPI wireless certificates on WPI-Open. 

6) Download the ROS_KINETIC_TURTLEBOT file that is in this repo. And run this file using the source command. (E.x. source ROS_KINETIC.....)

7) Notes for follower and gmapping programs - give minimal time to start or sensors may not be seen. 1-3 seconds. 

<h2><b>For installation instructions on VM's:</b></h2>

1) Install the Desktop version of Ubuntu 16.04.3 on a VM. Make sure the VM has at least 25GB of memory. 

2) Use the ROS_TURTLE_KINETIC_INSTALL.sh script. Place that on the VM Desktop. Use the cd command in the terminal to go into your desktop directory and use the command: source ROS_TURTLE_KINETIC_INSTALL.sh.

3) This will install more then you need (it installs the drivers for the turtlebot as well, however it won't be an issue).



<h2><b>Issue Log:</b></h2>

<b>Wifi Networks are not detected on Ubuntu 16.04</b>
1) in terminal : iwconfig - if the wireless card is listed:
2) sudo ifconfig wlp4s0 up
3) service network-manager restart
If that doesn't work, plug into ethernet and
4) sudo apt-get purge bcmwl-kernel-source
5) sudo apt-get install linux-generic bcmwl-kernel-source

<b>Sudo access issues - error with usr/lib/sudo/sudoer.so or sudo.conf</b>
1) load into root though grub (or though terminal)
2) chmod 644 usr/lib/sudo/sudoer.so 

<b>If keyboard or mouse becomes unresponsive,</b>
1) Restart the machine.
