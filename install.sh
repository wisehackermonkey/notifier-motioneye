#!/bin/bash
bash ~/.bashrc
if ! gpio -v > /dev/null;then
    echo "installing wiringpi"
    sudo apt-get install wiringpi
    else
        echo "wiringpi        [Installed ✅]"

fi

if ! forever-service -V > /dev/null;then
    echo "installing forever-service"

    npm install -g forever 
    npm install -g forever-service
    else
    echo "forever-service [Installed ✅]"
fi
