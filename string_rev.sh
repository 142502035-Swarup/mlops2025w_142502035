#!/bin/bash 
echo "Enter a string:" 
read str 
len=${#str} 
rev_str="" 
for (( i=$len-1; i>=0; i-- )) 
do 
    rev_str="$rev_str${str:$i:1}" 
done 
echo "Reversed string: $rev_str"
