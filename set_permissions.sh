#!/bin/bash

# usage: ./set_permissions.sh folder group
# changes the permissions of "folder" and all its files to the group "group"
folder=$1
group=$2

chgrp -R $group $folder
chmod -R g+rxs $folder
setfacl -R -d -m g::rwX $folder
