#!/bin/bash

list=("bunny" "yellow" "bla" "doge")

# selecting the list of scales and creating a temporary list
awk '{ print $4 }' sums.txt > temp_test.txt
list_scales=($(cat temp_test.txt))

list_size=${#list[@]}

for (( idx=0;idx<${list_size}; idx++ ));
do

i=${list[$idx]}
tmp_scale=${list_scales[$idx]}

echo "name: $i, scale: $tmp_scale"

done

