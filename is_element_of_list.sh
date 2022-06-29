#/bin/bash

# checks if string is CONTAINED or ELEMENT of a list/array

myarray=(10 20 55 77 983)

for i in `seq 1 1000`;
do
   if [[ " ${myarray[*]} " == *" ${i} "* ]]; then
        echo "$i is element of myarray"
   fi
   if [[ "${myarray[*]}" =~ "${i}" ]]; then
        echo "$i is contained in myarray"
   fi
done
