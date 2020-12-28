#! /bin/bash -x
isFullTime=1
isPartTime=2
fullTimeHours=12
partTimeHours=8
absentHours=0
empRatePerHr=20
numWorkingDays=20
days=1
empHours=0
function empWorkHours() {
	local empCheck=$1
	 case $empCheck in
                $isFullTime)
                        empHours=$fullTimeHours
                        ;;
                $isPartTime)
                         empHours=$partTimeHours
                        ;;
                *)
                         empHours=$absentHours
                        ;;
        esac
echo $empHours
}
while [[ $days -le $numWorkingDays ]]
do
        empCheck=$((RANDOM%3))
	empHours="$( empWorkHours $empCheck )"
	dailySalary=$(( empHours*empRatePerHr ))
	dailyWage[ $((days-1)) ]=$dailySalary
	totalSalary=$(( totalSalary+dailySalary ))
	days=$(( days+1 ))
done
echo ${dailyWage[@]}
echo $totalSalary
