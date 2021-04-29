#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
WAGE_PER_HT=20
MAX_WORKING_DAYS=20
totalworkinghours=0
totalworkingdays=0

while [ $totalworkingdays != $MAX_WORKING_DAYS ]
do
        employeecheck=$((RANDOM%3))
        (( totalworkingdays++))
        case $employeecheck in
                $IS_PRESENT_FULL_TIME) empHrs=8;;
                $IS_PRESENT_PART_TIME) empHrs=4;;
                *) empHrs=0;;
        esac
        totalworkinghours=$(( totalworkinghours + empHrs ))
done
salary=$(( totalworkinghours * WAGE_PER_HR ))
echo "$salary"

