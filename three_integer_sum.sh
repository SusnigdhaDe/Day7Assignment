#!/bin/bash -x

#Write a Program to show Sum of three Integer adds to ZERO

sum=0
echo "Enter three integers"

for((i=0;i<3;i++))
do
read Integer[$i]
done

for((i=0;i<3;i++))
do
int=${Integer[i]}
sum=$(($sum+$int))
done

if [[ $sum -eq 0 ]]
then
echo Sum of the Integers is $sum
fi


