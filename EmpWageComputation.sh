#! /bin/bash -x

#Constants
IS_PRESENT_HALF_HR=1
IS_PRESENT_FULL_HR=2
EMP_RATE_PER_HR=20

#Variables
empCheck=$(( RANDOM % 3 ))

#Selecion
case $empCheck in
        $IS_PRESENT_FULL_HR) empHrs=8 ;;
        $IS_PRESENT_HALF_HR) empHrs=4 ;;
        *) empHrs=0 ;;
esac
salary = $(( empHrs * EMP_RATE_PER_HR ))
