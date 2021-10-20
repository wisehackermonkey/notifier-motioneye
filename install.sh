#!/bin/bash
bash ~/.bashrc
if ! gpio -v 2>&1 /dev/null;then
    echo "installing wiringpi"
    apt-get install wiringpi
    else
        echo "wiringpi        [Installed ✅]"

fi


if ! forever -h 2>&1 /dev/null;then
    echo "installing forever"

    npm install -g forever 
    else
    echo "forever [Installed ✅]"
fi



if ! forever-service -V 2>&1 /dev/null;then
    echo "installing forever-service"
    npm install -g forever-service
    else
    echo "forever-service [Installed ✅]"
fi
