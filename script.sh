#/bin/bash
count=$1
if [ $2 == "m" ]
	then
		echo "locking screen in: "$count " minutes"
		count=$(( $count * 60 ))
fi
if [ $2 == "h" ]
	then
		echo "locking screen in: "$count " hours"
		count=$(( $count * 60 * 60 ))
fi
if [ $2 == "s" ]
	then
		echo "locking screen in: "$count " seconds"
fi
while [[ count -ge 0 ]]
do
        sleep 1
        count=$(( $count - 1 ))
		if (( $count < 0))
			then
				open https://www.youtube.com/watch?v=A9GMqjLbIpQ
		fi
done
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/rnabil/Desktop/hh/pg.png"'
set desktop picture to POSIX file  "/Users/rnabil/Desktop/hh/pg.png"
pmset displaysleepnow
while (( $count < 10 ))
do
	osascript -e "set Volume 10"
done
