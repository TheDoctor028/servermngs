#!/bin/bash

cwd=$(dirname $(readlink -f $0)) # current wrinting dir

installerdir="/mnt/shared/install" # mounted windows dir

echo $cwd

function installcmk 
{
    sudo dpkg -i "/mnt/shared/install/check-mk-agent.deb"
}

# Looking for checkmk_agent.deb in /mnt/shared/install
if [ -d "/mnt/shared/install" ]; then
  	echo "install directory found..."
  	installcmk
else
 	echo "install firectory not found..."
  	# Try to mount install
  	if [ -d "$cwd/../mnts" ]; then
     	echo "mounting scripts found"
     	bash "$cwd/../mnts/mntinstall.sh" # run mnt script
  	else
	    echo "no mnts found"
  	fi
fi

echo "finished"
