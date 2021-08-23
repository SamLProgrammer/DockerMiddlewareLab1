#! /bin/sh
current_date=$(date)
server0_ping=$(curl -s -o /dev/null -w '%{http_code}' http://172.18.0.3:8000/status)
server1_ping=$(curl -s -o /dev/null -w '%{http_code}' http://172.18.0.4:8000/status)

echo "$server0_ping $current_date" > /home/debian/last_server0_ping.txt
echo "$server1_ping $current_date" > /home/debian/last_server1_ping.txt
