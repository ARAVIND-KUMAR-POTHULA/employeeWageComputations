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
while [[ $days -le $numWorkingDays && $empHours -le $maxHours ]]
do
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
			empHours=$(( empHours+fullTimeHours ))
			totalSalary=$(( totalSalary+fullTimeHours*empRatePerHr))
                        ;;
                $isPartTime)
			 empHours=$(( empHours+partTimeHours ))
			totalSalary=$(( totalSalary+partTimeHours*empRatePerHr))
                        ;;
                *)
			 empHours=$(( empHours+absentHours ))
			totalSalary=$(( totalSalary+absentHours*empRatePerHr ))
			;;
        esac
days=$(( days+1 ))
done

