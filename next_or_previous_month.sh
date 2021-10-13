#!/bin/bash

# DATES to be processed
yyyy=$1                                     # YYYY (2010)
yy=${yyyy: -2}                              # YY   (10)
m=$2
mm=$(printf "%02d" $m)

# previous month
if [[ $m == "1" ]]; then
      pm=12
      pmm=12
      pyyyy=$(($yyyy-1))                    # previous year YYYY (2009)
      pyy=${pyyyy: -2}                      # previous year YY (09)
else
      pm=$(($m-1))
      pmm=$(printf "%02d" $pm)
      pyyyy=$yyyy
      pyy=${yyyy: -2}
fi

# next  month
if [[ $m == "12" ]]; then
      nm=1
      nmm="01"
      nyyyy=$(($yyyy+1))                    # next year YYYY (2011)
      nyy=${nyyyy: -2}                      # next year YY (11)
else
      nm=$(($m+1))
      nmm=$(printf "%02d" $nm)
      nyyyy=$yyyy
      nyy=${yyyy: -2}
fi

echo "Current month/date: ${yyyy}-${mm}"
echo "Previous month/date: ${pyyyy}-${pmm}"
echo "Next month/date: ${nyyyy}-${nmm}"
