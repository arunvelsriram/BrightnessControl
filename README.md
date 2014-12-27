BrightnessControl
===========
Shell script to control screen brightness in Ubuntu Linux.

##Usage

	`$ sudo backlight.sh -u | -d`

-u Increases brightness  
-d Decrease brightness

##More Fun

###Creating your own command

* Move the script backlight.sh to /usr/bin/  
`$ sudo mv backlight.sh /usr/bin/backlight`
* Now its possible to execute the script from anywhere in the commandline without the .sh extension  
`$ sudo backlight -u | -d`

###Executing the script without password
* As the script requires more privileges, we have to run it with sudo and type in the password
* To avoid this lets modify the sudoers file to allow the current user to execute the command without passworrd
* Open the sudoers file:  
`$ sudo visudo `
* Add the following line to the file  
`username ALL=(ALL) NOPASSWD: /usr/bin/backlight`  
where username is your username
* Press Control + X to save the file and reboot your system
* After the reboot you can run the command without entering the password

###Control brightness on keypress
* It makes our life easier if we are able to raise/lower brightness using keyboard. It's very easy.
* Install xbindkeys using the following command:  
`$ sudo apt-get install xbindkeys`
* Next we have to create a configuration file for xbindkeys in the home directory  
`$ xbindkeys --defaults > $HOME/.xbindkeysrc`  
where $HOME referes to your home directory
* Open the configuration file:  
`$ nano .xbindkeysrc`
* Add your configuration which is a pair of key and a command to execute on pressing that key.
::::::::::::::::::::::::::::::::::::::::::::::::::::
* Save the file and close it.
* Run xbindkeys  
`$ xbindkeys`
* Now pressing Control + Right should increase the brightness and Control + Right decreases it.
* To make xbindkeys stop listening to key presses:  
`$ killall -HUP xbindkeys`

##Devices
Checked in Ubuntu 14.04 64-bit Linux on Dell Inspiron N4010. It will work in all Dell Inspirons I guess. About other laptops I don't know SORRY!
