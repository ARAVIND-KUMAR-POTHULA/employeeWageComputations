#! /bin/bash -x
isPartTime=1
isFullTime=2
isAbsent=0
wagePerHour=20
fullTimeHours=12
partTimeHours=8
employeeCheck=$(( RANDOM%3 ))
	case $employeeCheck in 
	$isFullTime)
		dailyWage=$(( wagePerHour*fullTimeHours ))
		;;
	$isPartTime)
                dailyWage=$(( wagePerHour*partTimeHours ))
		;;
		*)
		dailyWage=0
	esac
