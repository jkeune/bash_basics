#!/bin/bash

mylist=("00" "06" "12" "18")
echo "Printing the entire list: ${mylist[@]}"

for i in `seq 1 1 24`;
do

    ih=$(printf "%02d" $i)
    
    if [[ ${mylist[*]} =~ ${ih} ]];
    then
        echo "$ih"
    else
        echo "$ih not mylist!"
    fi

done
