#! /bin/bash -x
isFullTime=1
isPartTime=2
fullTimeHours=12
partTimeHours=8
absentHours=0
empRatePerHr=20
numWorkingDays=20
days=1
maxHours=100
empHours=0
function empWorkHours() {
	local empCheck=$1
	 case $empCheck in
                $isFullTime)
                        empHours=$(( empHours+fullTimeHours ))
                        ;;
                $isPartTime)
                         empHours=$(( empHours+partTimeHours ))
                        ;;
                *)
                         empHours=$(( empHours+absentHours ))
                        ;;
        esac
echo $empHours
}
while [[ $days -le $numWorkingDays && $empHours -le $maxHours ]]
do
        empCheck=$((RANDOM%3))
	empHours="$( empWorkHours $empCheck )"
	days=$(( days+1 ))
done
totalSalary=$(( empHours*empRatePerHr ))

