#!/bin/bash
KEYWORD="lbenj"
PORT=6969

lock_screen() {
        open -a ScreenSaverEngine
}

handle_connection() {
    while read -r data; do
        if [ "$data" = "$KEYWORD" ]; then
            echo "bar9ia wadi7a hh"
            lock_screen
        else
            echo "bar9ia ghayr wadi7a hh: $data"
        fi
    done
}

echo "kntsnaw lbar9ia f port $PORT..."

while true; do
    ( nc -l "$PORT" | handle_connection )
    sleep 5
done
