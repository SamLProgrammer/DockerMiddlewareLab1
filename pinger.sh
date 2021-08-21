#! /bin/sh
current_date=$(date)
server0_ping=$(curl -s -o /dev/null -w '%{http_code}' http://192.168.13:4000/status)
server1_ping=$(curl -s -o /dev/null -w '%{http_code}' http://192.168.16:4000/status)

echo "$server0_ping $current_date" > /home/debian/last_server0_ping.txt
echo "$server1_ping $current_date" > /home/debian/last_server1_ping.txt
