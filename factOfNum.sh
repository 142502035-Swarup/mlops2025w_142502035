#!/bin/bash
#factorial(num):
echo "entr the number"
read num
fact=1
count=$num
while [ $count -gt 0 ] ; do
fact=$((fact*count))
count=$((count-1))
done
echo "the factorial of $num is $fact"
