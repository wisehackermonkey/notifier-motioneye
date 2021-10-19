WATCHFILE=/root/github/notifier-motioneye/output.log

while true; do
    while read j
    do
    echo "file changed"
    break
    done <  <(inotifywait -q -e modify $WATCHFILE)
done
