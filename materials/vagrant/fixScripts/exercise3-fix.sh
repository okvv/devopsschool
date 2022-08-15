#!/bin/bash
#add fix to exercise3 here
/usr/bin/sed -i 's:denied:granted:g' /etc/apache2/sites-available/000-default.conf
systemctl reload apache2
