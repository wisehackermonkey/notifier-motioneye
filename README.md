
# start program
```
git clone https://github.com/wisehackermonkey/notifier-motioneye.git

sudo bash install.sh 


# Edit login-watcher.sh 
run 
>gpio readall
Set PIN=< your raspberry pi pin>
verify it worked 

bash blink_led.sh <wPi Pin number>
bash blink_led.sh 25

>nano login-watcher.sh 
EDiT
PIN=25 to match your rpi's pin 

```
### [zapty/forever-service: Provision node script as a service via forever, allowing it to automatically start on boot, working across various Linux distros and OS](https://github.com/zapty/forever-service)
```

# recommended way to run forever
edit `-o "25"` ->   `-o "8"`
forever-service install login-watcher -s login-watcher.sh -f " -c 'bash'" -o "25"

sudo service login-watcher start
sudo service login-watcher status

# delete serivce
sudo forever-service delete login-watcher 

```
#### Alternetivly
```
# manually run
sudo apt-get install wiringpi
npm install -g forever 
npm install -g forever-service

bash login-watcher.sh

```

# Commands to interact with service login-watcher
```
Start   - "sudo service login-watcher start"
Stop    - "sudo service login-watcher stop"
Status  - "sudo service login-watcher status"
Restart - "sudo service login-watcher restart"
```




```
apt-get install inotify-tools
```

# Scratch pad
```
journalctl -u motioneye -p info  | grep 'DEBUG:'
journalctl -u motioneye --no-full
journalctl -u motioneye  | grep 'DEBUG:'


journalctl -u motioneye  --no-pager | grep 'DEBUG:'

journalctl -u motioneye  --no-pager | grep 'creating mjpg client for camera'

journalctl -f -u motioneye  --no-pager | grep 'DEBUG:'

journalctl -f -u motioneye  --no-pager | grep 'DEBUG: 304 GET /'

journalctl -f -u motioneye  --no-pager | grep 'GET /static/favicon'


journalctl -f -u motioneye  -o json | grep 'DEBUG:'

journalctl -f -u motioneye  | grep 'DEBUG: 304 GET /'



inotifywait -m -e modify ./output.log

echo "bh" > ./output.log

WATCHFILE=/root/github/notifier-motioneye/output.log

while true; do
    while read j
    do
    echo "file changed"
    break
    done <  <(inotifywait -q -e modify $WATCHFILE)
done
bash login-watcher.sh


echo "out" > /sys/class/gpio/gpio9/direction
echo "1" > /sys/class/gpio/gpio9/value


echo "out" > /sys/class/gpio/gpio3/direction
echo "1" > /sys/class/gpio/gpio3/value


install wiringpi with dietpi software
dietpi-software list | grep Wiring
```
root@dietpi2:~# dietpi-software list | grep Wiring
ID 70 | =0 | WiringPi: GPIO interface library (C) | +Build-Essential | https://dietpi.com/docs/software/hardware_projects/#wiringpi
ID 166 | =0 | Audiophonics PI-SPC: Raspberry Pi power management module | +WiringPi | https://dietpi.com/docs/software/hardware_projects
```
dietpi-software install 70

gpio mode 3 out
gpio write 3 1

gpio mode 26 out
gpio write 26 1

gpio mode 14 out
gpio write 14 1

gpio mode 15 out
gpio write 15 1


git clone https://github.com/wisehackermonkey/notifier-motioneye.git
git remote set-url origin https://wisehackermonkey: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@github.com/wisehackermonkey/notifier-motioneye.git

journalctl -u motioneye --no-pager


journalctl -u motioneye --no-pager -g 'DEBUG: 304 GET /'
```

# links
[how journalctl works -- i used this extensivly](https://www.digitalocean.com/community/tutorials/how-to-use-journalctl-to-view-and-manipulate-systemd-logs)