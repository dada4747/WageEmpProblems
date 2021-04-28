#! /bin/bash -x

#Constants
IS_PRESENT_HALF_HR=1
IS_PRESENT_FULL_HR=2
EMP_RATE_PER_HR=20

#Variables
empCheck=$(( RANDOM % 3 ))

#Selecion

if [ $empCheck -eq $IS_PRESENT_FULL_HR ]
then
	empHrs=8
elif [$empCheck -eq $IS_PRESENT_FULL_HR ]
then
	empHrs=4
else 
	empHrs=0
fi
salary = $(( empHrs * EMP_RATE_PER_HR ))
