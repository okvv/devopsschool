#!/bin/bash
#add fix to exercise4-server2 here
sudo /bin/sh -c 'echo "192.168.60.10 server1" >> /etc/hosts'
/usr/bin/sed -i 's:PasswordAuthentication no:PasswordAuthentication yes:g' /etc/ssh/sshd_config
sudo systemctl restart sshd
