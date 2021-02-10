#!/bin/bash

cwd=$(dirname $(readlink -f $0)) # current wrinting dir
iserver="//192.168.1.15/install"
user=$(whoami)

if [ -d "/mnt/shared" ]; then
	mkdir "/mnt/shared"
fi
if [ -d "/mnt/shared/install" ]; then
	mkdir "/mnt/shared/install"
fi

sudo apt-get update # update repos
sudo apt-get install cifs-utils -y # download cifs

mnt.cifs $iserver "/mnt/shared/install" -o user=$user
