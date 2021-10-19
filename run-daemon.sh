echo "Started" > ./output.log
journalctl -f -u motioneye  | grep 'DEBUG: 304 GET /' > ./output.log