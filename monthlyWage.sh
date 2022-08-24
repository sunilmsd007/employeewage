isPresent=$((RANDOM%3));
perHourSalary=20;
workingHour=0;
totalSalary=0;
day=1;
while [[ $day -lt 20  ]]
do
        case $isPresent in
                0)
                workingHour=0;
                ;;
                1)
                workingHour=8;
                ;;
                2)
                workingHour=8;
                ;;
        esac
        salary=$(($perHourSalary * $workingHour));
        totalSalary=$(($totalSalary + $salary));
        ((day++))
done
echo "daily wage of the employee is $salary"
echo "monthly wage of the employee is $totalSalary"
