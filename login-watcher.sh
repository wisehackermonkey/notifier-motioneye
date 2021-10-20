# which gpio pin is used to blick the led
# use `gpio readall` to get your pin out use `wPi` pin number here
PIN=15
if gpio -v > /tmp/log.log; then

    # set output pin to output
    gpio mode $PIN out
    gpio write $PIN 0


    # blink a few times to indicate that led is working 
    # and that the script has started
    gpio write $PIN 1
    sleep .1
    gpio write $PIN 0
    sleep .1
    gpio write $PIN 1
    sleep .1
    gpio write $PIN 0
    sleep .1

    echo "Motioneye Login watcher/led blinker has started"
    # wait untill the file WATCHFILE has been modified
    # this means a new journalctl has registered a login via
    # web interface motioneye aka someone has viewed the webcam page
    while true; do
        if journalctl -u motioneye --no-pager --since  "1 second ago" | grep 'DEBUG: 304 GET /'; then
        echo "Webcam was viewed: [file changed] `date`"
            gpio write $PIN 1
            sleep 1
            gpio write $PIN 0
    fi
        sleep 1
    done

fi