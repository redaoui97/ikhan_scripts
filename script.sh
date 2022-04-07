#/bin/ksh
countdown=36000
while [[ ${countdown} -ge 0 ]]
do
        sleep 1
        countdown=$(( ${countdown} - 1 ))
done
pmset displaysleepnow
