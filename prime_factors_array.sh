#!/bin/bash -x

#Extend the Prime Factorization Program to store all the Prime Factors of a
#number n into an array and finally display the output.

c=0
pos=0
read -p "Enter a number " n
echo "The prime factors are "

for (( i=2;i<=n;i++ ))
do
if [[ $(($n%$i)) -eq 0 ]]
then
{
for (( j=2;j<$i;j++ ))
do
if [[ $(($i%$j)) -eq 0 ]]
then c=$(($c+1))
fi
done
}
if [ $c -eq 0 ]
then prime_factor[$pos]=$i
pos=$(($pos+1))
fi
c=0
fi
done

echo ${prime_factor[@]}

