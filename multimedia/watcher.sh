#!/bin/bash


FILES=/media/MYCH0/Downloads/jackett/downloads/*
HISTORYFOLDER=/media/MYCH0/Downloads/jackett/downloads/history

HOST="127.0.0.1"
PORT="9091"
USER="mycha"
PASS=""
PAUSED="false"

SESSID=$(curl --silent --anyauth --user $USER:$PASS "http://$HOST:$PORT/transmission/rpc" | sed 's/.*<code>//g;s/<\/code>.*//g')

for file in $FILES
do
    if [ -f "$file" ]; then
        MAGNETLINK=$(cat "$file")
        curl --silent --anyauth --user $USER:$PASS --header "$SESSID" "http://$HOST:$PORT/transmission/rpc" -d "{\"method\":\"torrent-add\",\"arguments\":{\"paused\":${PAUSED},\"filename\":\"${MAGNETLINK}\"}}"
        mv "$file" $HISTORYFOLDER
    fi
done
