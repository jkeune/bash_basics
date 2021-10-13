#!/bin/bash

rmfile="delete_this_file"
if [[ -f "${rmfile}" ]]; then 
    echo "$rmfile exists. Deleting..."
    rm $rmfile; 
fi
