

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

![Config screenshot](screenshots/WineConfig1.png?raw=true "Wine Configuration pt.1")
![Config screenshot](screenshots/WineConfig2.png?raw=true "Wine Configuration pt.2")
