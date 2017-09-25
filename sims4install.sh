#!/bin/bash
grep wine /etc/apt/sources.list.d/additional-repositories.list > /dev/null
if [ "$?" -ne "0" ];
then
  wget https://dl.winehq.org/wine-builds/Release.key
  sudo apt-key add Release.key
  sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
  sudo apt-get update
  sudo apt-get install -y winehq-stable cabextract # --install-suggests
else
  echo wine installed
fi
#sudo apt-get install wine libntlm0 libgnutls-openssl27 libgnutls-dev

ls OriginSetup.exe
if [ "$?" -ne "0" ];
then
  wget https://download.dm.origin.com/origin/live/OriginSetup.exe
else
  echo origin already downloaded
fi

export WINEPREFIX=${HOME}/.sims4/
export WINEARCH=win32
winecfg

ls winetricks
if [ "$?" -ne "0" ];
then
  wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
else
  echo winetricks already downloaded
fi

sh winetricks corefonts vcrun2010 vcrun2012 vcrun2013
