

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
![Config screenshot](screenshots/WineConfig1.png?raw=true "Change this screen")
![Config screenshot](screenshots/WineConfig2.png?raw=true "..so it looks like this")

### Accept the EULAs for some windows libraries:
![Config screenshot](screenshots/VisualC%2B%2B2010.png?raw=true "Note that the agreement box is checked")
![Config screenshot](screenshots/VisualC%2B%2B2012.png?raw=true "Note that the agreement box is checked")
![Config screenshot](screenshots/VisualC%2B%2B2013.png?raw=true "Note that the agreement box is checked")
