#! /bin/bash -x
isPresent=1
isAbsent=0
wagePerHour=20
fullTimeHours=8
employeeCheck=$(( RANDOM%2 ))
	if (( $employeeCheck==$isPresent ))
	then
		dailyWage=$(( wagePerHour*fullTimeHours ))
	else
		dailyWage=0
	fi
