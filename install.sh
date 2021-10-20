#!/bin/bash
read ~/.bashrc
if dietpi-software --help ;then
    dietpi-software install 70
    # 
else
    sudo apt-get install wiringpi
fi
npm install -g forever 
npm install -g forever-service
