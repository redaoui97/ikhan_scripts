#/bin/ksh
while [[ $1 -ge 0 ]]
do
        sleep 1
        countdown=$(( $1 - 1 ))
done
pmset displaysleepnow
