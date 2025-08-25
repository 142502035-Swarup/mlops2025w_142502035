#!/bin/bash 
echo "a:"; read a 
echo "b:"; read b 
echo "c:"; read c 
d=$((b*b - 4*a*c)) 
if [ $d -lt 0 ]; then 
    echo "imaginary roots" 
elif [ $d -eq 0 ]; then 
    r=$(echo "-$b / (2*$a)" | bc -l) 
    echo "equal roots: $r" 
else 
    s=$(echo "sqrt($d)" | bc -l) 
    r1=$(echo "(-1*$b + $s) / (2*$a)" | bc -l) 
    r2=$(echo "(-1*$b - $s) / (2*$a)" | bc -l) 
    echo "roots: $r1 , $r2" 
fi
