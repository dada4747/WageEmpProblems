#! /bin/bash
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORK_HOURS=20

totalworkingdays=0
totalworkinghours=0

function  getWorkHours(){
        local empCheck=$1
        local empHrs=0
        case $empCheck in
        $IS_PRESENT_FULL_TIME ) empHrs=8 ;;
        $IS_PRESENT_PART_TIME ) empHrs=4 ;;
        *)
        esac
        echo $empHrs

}
function caldailywage(){
        emphrs=$!
        wage=$((empHrs * EMP_RATE_PER_HR))
        echo $wage
}
while [ $totalworkingdays -lt $NO_OF_WORKING_DAYS ] && [ $totalworkinghours -lt $MAX_WORK_HOURS ]
do
        empCheck=$(( RANDOM%3 ))
        totalworkingdays=$(($totalworkingdays + 1 ))
        empHrs="$( getWorkHours $empCheck )"
#       totalworkingdays=$(( $totalworkingdays + $empHrs ))
        empdailywage[$totalworkingdays]="$(caldailywage $empHrs)"
done
#salary=$(( $EMP_RATE_PER_HR * $totalworkinghours ))
totalsalary="${caldailywage $totalworkonghours}"
for i in ${!empdailywage[*]}
do
        echo $i:${empdailywage[$i]}
done
