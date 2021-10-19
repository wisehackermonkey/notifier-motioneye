WATCHFILE=/root/github/notifier-motioneye/output.log
PIN=15

# set output pin to output
gpio mode $PIN out
gpio write $PIN 0


echo "Motioneye Login watcher/led blinker has started"
# wait untill the file WATCHFILE has been modified
# this means a new journalctl has registered a login via
# web interface motioneye aka someone has viewed the webcam page
while true; do
    while read j
    do
    echo "Webcam was viewed: [file changed]"
    gpio write $PIN 1
    sleep 1
    gpio write $PIN 0
    break
    done <  <(inotifywait -q -e modify $WATCHFILE)
done
