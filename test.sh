#!/bin/bash
sshpass -p "" ssh root@172.18.0.3 << HERE
 mkdir /home/debian/tokio
 touch tokio.txt
HERE