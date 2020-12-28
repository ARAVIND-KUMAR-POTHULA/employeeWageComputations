#! /bin/bash -x
isPartTime=1
isFullTime=2
isAbsent=0
wagePerHour=20
fullTimeHours=12
partTimeHours=8
employeeCheck=$(( RANDOM%3 ))
	if (( $employeeCheck==$isFullTime ))
	then
		dailyWage=$(( wagePerHour*fullTimeHours ))
	elif (( $employeeCheck==$isPartTime ))
        then
                dailyWage=$(( wagePerHour*partTimeHours ))
	else
		dailyWage=0
	fi
