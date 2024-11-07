## win 11 configuration
updated 2024 config files for my work/home setup
email parsamiller@outlook.com
discord `raype`

## installation 
 1. first install scoop.sh and glazewm with zebar
	 - [scoop](https://scoop.sh/) / [glazewm](https://github.com/glzr-io/glazewm)
 2. then install any package you like buy running the scoop command, the packages i use are listed in scoop/packages.txt
	- example ```scoop install pastel```
	- installing different packages at once `scoop install package1 package2`
 3. depending on your file system you should copy the config files
	 - copy the .config folder to user/.config 
	 - on windows go to appdata/Local and copy the nvim folder
	 - copy the .glzr to user/.glzr
	 - import the codium profiles from the app
	 - copy the wt settings.json and replace it with your current setting
 4. change some hotkeys
	- depending on your use case you should either build an .ahk file and put it in the scripts folder in the .glzr directory and add it to the start.ps1 file / changing the config file in the .glzr/glazewm/config.yaml

## To do 
 - [x] add a basic readme file
 - [ ] add an install script
 - [ ] update the readme file with images 
 - [ ] addd a better readme file
 - [ ] keep the config files updated
