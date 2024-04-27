#!/bin/bash

chmod +x sapiens.sh start.sh
add-apt-repository multiverse
dpkg --add-architecture i386
apt update -y
apt install steamcmd -y
steamcmd +force_install_dir ./server +login anonymous +app_update 2886350 validate +quit
mkdir ~/.steam/sdk64
cd ~/.steam/sdk64/
ln -s ../steam/steamcmd/linux64/steamclient.so steamclient.so
