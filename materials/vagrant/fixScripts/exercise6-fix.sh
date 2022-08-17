#!/bin/bash
#add fix to exercise6-fix here

FILE_LIST=${*:1:$#-1}
DESTINATION_FOLDER=${*: -1}
[ "$HOSTNAME" = "server1" ] && DESTINATION_SERVER="server2" || DESTINATION_SERVER="server1"

/usr/bin/scp -q -F /home/vagrant/.ssh/config $FILE_LIST $DESTINATION_SERVER:$DESTINATION_FOLDER
/usr/bin/du -bcs $FILE_LIST | awk '{print $1}' | tail -1
