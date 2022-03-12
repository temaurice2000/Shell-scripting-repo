#!/bin/bash
echo "Enter a first number"



read num1
sleep 2
echo "Enter a second number"
read num2
sleep 2
if [[ "$num1" == "$num2" ]];
then
	echo "Both numbers are equal"
elif [[ "$num1" -gt "$num2" ]];
then
	echo "$num1 is greater than $num2"
elif [[ "$num1" -lt "$num2" ]];
then
	echo "$num1 is lesser than $num2" 
else
	echo " Both numbers are equal to zero"
fi

