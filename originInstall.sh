#!/bin/bash

set -o errexit
set -o nounset

export WINEPREFIX=${HOME}/.sims4
export WINEARCH=win32
export WINETRICKS_LOG=$WINEPREFIX/winetricks.log
touch $WINETRICKS_LOG

ORIGIN_UPDATE=OriginUpdate_9_12_0_34172.zip

grep wine /etc/apt/sources.list > /dev/null
if [ "$?" -ne "0" ];
then
  wget https://dl.winehq.org/wine-builds/Release.key
  sudo apt-key add Release.key
  sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
  sudo apt-get update
  sudo apt-get install -y --install-recommends winehq-stable cabextract
else
  echo "wine installed"
fi

if [ -e OriginThinSetup.exe ];
then
  echo origin thin already downloaded
else
  wget www.dm.origin.com/download/legacy -O OriginThinSetup.exe
fi

if [ -e ${ORIGIN_UPDATE} ];
then
  echo origin update already downloaded
else
  wget origin-a.akamaihd.net/Origin-Client-Download/origin/live/${ORIGIN_UPDATE}
fi

if [ -e $WINEPREFIX ];
then
  echo wine already configured
else
  winecfg
fi

if [ -e winetricks ];
then
  echo winetricks already downloaded
else
  wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
fi

function call_winetricks_if_necessary {
  RET=0
  grep $1 $WINETRICKS_LOG || RET=$? || true
  if [ "$RET" -ne "0" ];
  then
    echo installing $1
    sh winetricks $1
  else
    echo $1 already installed
  fi
}

call_winetricks_if_necessary corefonts
call_winetricks_if_necessary vcrun2010
call_winetricks_if_necessary vcrun2012
call_winetricks_if_necessary vcrun2013

sudo apt-get -y install samba winbind xinput

if [ -e ${HOME}/.sims4/drive_c/Program\ Files/Origin/Origin.exe ];
then
  echo origin thin client already installed
else
  echo installing origin thin client
  wine OriginThinSetup.exe || true
fi

if [ -e ${HOME}/.sims4/drive_c/Program\ Files/Origin/OriginClientService.exe ];
then
  echo origin update already installed
else
  echo install origin update
  olddir=$(pwd)
  cd ~/.sims4/drive_c/Program\ Files/Origin
  unzip -o ${olddir}/${ORIGIN_UPDATE}
  cd ${olddir}
fi

