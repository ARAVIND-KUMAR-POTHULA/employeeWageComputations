#! /bin/bash -x
isPresent=1
isAbsent=0
employeeCheck=$(( RANDOM%2 ))
	if (( $employeeCheck==$isPresent ))
	then
		echo "EMPLOYEE IS PRESENT"
	else
		echo "EMPLOYEE IS ABSENT"
	fi
