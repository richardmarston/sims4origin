#!/bin/bash
grep wine /etc/apt/sources.list.d/additional-repositories.list > /dev/null
if [ "$?" -ne "0" ];
then
  wget https://dl.winehq.org/wine-builds/Release.key
  sudo apt-key add Release.key
  sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
  sudo apt-get update
  sudo apt-get install -y --install-recommends --install-suggests winehq-devel cabextract
else
  echo wine installed
fi

ls OriginSetup.exe
if [ "$?" -ne "0" ];
then
  wget https://download.dm.origin.com/origin/live/OriginSetup.exe
else
  echo origin already downloaded
fi

ls OriginThinClient.exe
if [ "$?" -ne "0" ];
then
  wget www.dm.origin.com/download/legacy -O OriginThinClient.exe
else
  echo origin thin already downloaded
fi

ls OriginUpdate.zip
if [ "$?" -ne "0" ];
then
  wget origin-a.akamaihd.net/Origin-Client-Download/origin/live/OriginUpdate_9_12_0_34172.zip -o /dev/null -O OriginUpdate.zip
else
  echo origin thin already downloaded
fi

export WINEPREFIX=${HOME}/.sims4/
export WINEARCH=win32
winecfg

ls winetricks
if [ "$?" -ne "0" ];
then
  wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
  sh winetricks corefonts vcrun2010 vcrun2012 vcrun2013
else
  echo winetricks already downloaded
fi

sudo apt-get -y install samba winbind xinput

ls ${HOME}/.sims4/drive_c/Program\ Files/Origin/Origin.exe
if [ "$?" -ne "0" ];
then
  wine OriginThinClient.exe || true
else
  echo origin thin client already installed
fi

ls ${HOME}/.sims4/drive_c/Program\ Files/Origin/OriginClientService.exe
if [ "$?" -ne "0" ];
then
  olddir=$(pwd)
  cd ~/.sims4/drive_c/Program\ Files/Origin
  unzip -o ${olddir}/OriginUpdate.zip
  cd ${olddir}
else
  echo origin update already installed
fi

