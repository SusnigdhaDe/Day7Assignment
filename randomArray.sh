#!/bin/bash -x

#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

for((i=0;i<10;i++))
do
n=$((RANDOM%900+100))
Number[$i]=$n
done

max=${Number[0]}
min=${Number[0]}
second_max=${Number[0]}
second_min=${Number[0]}

for((i=0;i<10;i++))
do
if [[ ${Number[i]} -ge $max ]]
then
second_max=$max
max=${Number[i]}
fi

if [[ ${Number[i]} -le $min ]]
then
second_min=$min
min=${Number[i]}
fi
done

echo The numbers are ${Number[@]}
echo The second largest number is $second_max
echo The second smallest number is $second_min
