#!/bin/bash

# file to read and loop over its lines
input="looplines.txt"
{
read # to skip the header line of input
while IFS= read -r line
do

    # extract line text, seperated by white space (-d ' ')
    col1=$(echo $line | cut -f1 -d ' ')
    echo $col1
    col2=$(echo $line | cut -f2 -d ' ')
    echo $col2

done
} < "$input"
