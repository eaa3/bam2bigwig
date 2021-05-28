#!/bin/bash

list=("bunny" "yellow" "bla" "doge")

# selecting the list of scales and creating a temporary list for it
awk '{ print $4 }' sums.txt > temp_test.txt
list_scales=($(cat temp_test.txt))

# getting the size of our list
list_size=${#list[@]}

# iterating over our two lists and getting corresponding pairs
for (( idx=0;idx<${list_size}; idx++ ));
do

# Getting the pairs
i=${list[$idx]}
tmp_scale=${list_scales[$idx]}

# Printing the pairs
echo "name: $i, scale: $tmp_scale"

done

