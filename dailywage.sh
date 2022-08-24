isPresent=$((RANDOM%2));
perHourSalary=20;
workingHour=0;
totalSalary=0;
if [ $isPresent -eq 0 ]
then
	echo "Employee is absent"
else
	echo "Employee is present"
        workingHour=8;
fi
        salary=$(($perHourSalary * $workingHour));
        totalSalary=$(($totalSalary + $salary));
echo "employee daily wage is $totalSalary"
