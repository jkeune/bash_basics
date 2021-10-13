#!/bin/bash

startdate="2003-08-01"
ndays=31
enddate="`date --date="${startdate} + ${ndays} day" +%Y-%m-%d `"

echo "Startdate:        " $startdate
echo "ndays:            " $ndays
echo "Enddate:          " $enddate

#----------------------------------
# Program
#----------------------------------

idate="`date --date="${startdate}" +%Y-%m-%d `"

idays=0
while [[ $idays -lt $ndays ]];
do

        idate="`date --date="${startdate} + ${idays} day" +%Y-%m-%d `"
        echo $idate

        yyyy="`date --date=$idate +%Y `"
        mm="`date --date=$idate +%m `"
        dd="`date --date=$idate +%d `"
        echo ${yyyy}-${mm}-${dd}

        idays=$(($idays+1))
done
