#!/bin/bash

yyyy=$1
m=$2

ndm=$(cal $m $yyyy | awk 'NF {DAYS = $NF}; END {print DAYS}')

echo "${yyyy}-${m} has ${ndm} days"
