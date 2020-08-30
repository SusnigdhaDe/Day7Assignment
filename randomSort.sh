#!/bin/bash -x

#Extend the above program to sort the array and then find the 2nd largest
#and the 2nd smallest element.

for((i=0;i<10;i++))
do
n=$((RANDOM%900+100))
Number[$i]=$n
Number1[$i]=$n
done

for((i=0;i<10;i++))
do
for((j=$i;j<10;j++))
do
if [[ ${Number[i]} -ge ${Number[j]} ]]
then
t=${Number[i]}
Number[$i]=${Number[j]}
Number[$j]=$t
fi
done
done

echo ${Number1[@]}
echo ${Number[@]}
