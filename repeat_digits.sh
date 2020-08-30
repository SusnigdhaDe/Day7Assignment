#!/bin/bash -x

#Take a range from 0 – 100, find the digits that are repeated twice 
#like 33, 77, etc and store them in an array


for((i=0;i<=100;i++))
do
n=$i
n1=$n
while [[ $n -ne 0 ]]
do
d=$(($n%10))
d1=$((($n/10)%10))
n=$(($n/10))
if [[ $d -eq $d1 ]]
then
Repeat[$i]=$n1
fi
done
done

echo ${Repeat[@]}

