#! /bin/bash -x
isFullTime=1
isPartTime=2
fullTimeHours=12
partTimeHours=8
absentHours=0
empRatePerHr=20
numWorkingDays=20
days=1
while [[ $days -le $numWorkingDays ]]
do
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
			totalSalary=$(( totalSalary+fullTimeHours*empRatePerHr))
                        ;;
                $isPartTime)
			totalSalary=$(( totalSalary+partTimeHours*empRatePerHr))
                        ;;
                *)
			totalSalary=$(( totalSalary+absentHours*empRatePerHr ))
			;;
        esac
days=$(( days+1 ))
done

