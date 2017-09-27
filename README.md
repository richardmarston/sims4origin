

## Installer Instructions
Don't type the dollar symbol ($) which is at the start of the line, that's just your prompt

### Check out this repository:
```bash
$ wget https://github.com/richardmarston/sims4origin/archive/master.zip
$ unzip master.zip
```

### Start the script running:
```bash
$ cd sims4origin-master
$ ./installOrigin.sh
```
### Give the script sudo access
Sometimes it will ask you for sudo access:
```bash
[sudo] password for $USER:
```
Just type your password. If you want to check why it is asking for this access, you can find the commands it runs with:
```bash
$ grep sudo originInstall.sh
```

### Configure Wine to pretend to be Windows 7 instead of XP:
###### Hover over the images for more detail
![Config screenshot](screenshots/WineConfig1.png?raw=true "Change this screen..")
![Config screenshot](screenshots/WineConfig2.png?raw=true "..so it looks like this")

### Accept the EULAs for some windows libraries:
![Config screenshot](screenshots/VisualC%2B%2B2010.png?raw=true "Note that the agreement box is checked")
![Config screenshot](screenshots/VisualC%2B%2B2012.png?raw=true "Note that the agreement box is checked")
![Config screenshot](screenshots/VisualC%2B%2B2013.png?raw=true "Note that the agreement box is checked")

### Accept the EULA for Origin
![Config screenshot](screenshots/EULA1.png?raw=true "Accept this agreement too")

### Configure the Origin installation
![Config screenshot](screenshots/OriginConfig1.png?raw=true "Change this screen..")
![Config screenshot](screenshots/OriginConfig2.png?raw=true "..to look like this one")

### This Origin screen can just be closed because it isn't ready yet
![Config screenshot](screenshots/Origin1.png?raw=true "Just close this")

### When the script has finished click on the Origin icon on the desktop
###### It should have lost that warning now so you can fill in the details and log in
###### Check the save details box to avoid always having to fill it in
![Config screenshot](screenshots/Origin2.png?raw=true "Fill in your details on this one")

### Inside Origin, go to the Preferences menu
![Config screenshot](screenshots/Preferences.png?raw=true "Select this menu item")

### Disable Origin In-Game
![Config screenshot](screenshots/InGame1.png?raw=true "Change this screen..")
![Config screenshot](screenshots/InGame2.png?raw=true "..so it is like this")

### Now you can finally attempt to install the game!
![Config screenshot](screenshots/Install.png?raw=true "..so it is like this")


