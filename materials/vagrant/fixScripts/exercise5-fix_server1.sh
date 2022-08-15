#!/bin/bash
#add fix to exercise5-server1 here
sudo tee -a /home/vagrant/.ssh/config > /dev/null <<EOT
Host server2
  HostName 192.168.60.11
  User vagrant
  IdentityFile /vagrant/.vagrant/machines/server2/virtualbox/private_key
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
EOT
