#!/bin/bash
#add fix to exercise5-server2 here
sudo tee -a /home/vagrant/.ssh/config > /dev/null <<EOT
Host server1
  HostName 192.168.60.10
  User vagrant
  IdentityFile /vagrant/.vagrant/machines/server1/virtualbox/private_key
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
EOT
