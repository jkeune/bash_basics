#!/bin/bash

TSini="2003-01-01"
iday=10
TSend=`date -d "$TSini + $iday day" +%Y-%m-%d`

TI_sec=$((`date -d $TSend +%s` - `date -d $TSini +%s`))
TI_hours=$(($TI_sec/3600))
TI_days=$(($TI_sec/3600/24))
echo "Start date:                $TSini"
echo "End date:                  $TSend"
echo "Time difference [seconds]: $TI_sec"
echo "Time difference [hours]:   $TI_hours"
echo "Time difference [days]:    $TI_days"
