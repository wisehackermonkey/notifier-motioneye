#!/bin/bash
read ~/.bashrc
if dietpi-software install 70;then
    sudo apt-get install wiringpi

fi
npm install -g forever 
npm install -g forever-service
