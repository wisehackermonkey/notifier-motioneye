# which gpio pin is used to blick the led
# use `gpio readall` to get your pin out use `wPi` pin number here
PIN=$1
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

    echo "Blink test started"
    while true; do
        echo "Blink"
        gpio write $PIN 1
        sleep 1
        gpio write $PIN 0
        sleep 1
    done

fi