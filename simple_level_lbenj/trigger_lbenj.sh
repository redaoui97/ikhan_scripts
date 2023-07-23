#/bin/bash
echo $1 | nc "$(ifconfig | grep -B1 "status: active" | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | awk '{print $2}')" 6969
