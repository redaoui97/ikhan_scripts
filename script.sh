#/bin/ksh
countdown=28800
while [[ ${countdown} -ge 0 ]]
do
        sleep 1
        countdown=$(( ${countdown} - 1 ))
done
pmset displaysleepnow
