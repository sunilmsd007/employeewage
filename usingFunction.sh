function workhour() {
        isPresent=$((RANDOM%2 +1));
        case $isPresent in
                1)
                workingHour=8;
                ;;

                2)
                workingHour=4;
                ;;
        esac
}
isPresent=$((RANDOM%3));
perHourSalary=20;
workingHour=0;
totalSalary=0;
totalWorkingHour=0;
day=1;
while [[ $day -lt 20 && $totalWorkingHour -lt 100 ]]
do
        workhour
        totalWorkingHour=$(($totalWorkingHour + $workingHour));
        if [ $totalWorkingHour -gt 100 ]
        then
                totalWorkingHour=$(($totalWorkingHour - $workingHour));
                break;
        fi
        salary=$(($perHourSalary * $workingHour));
        totalSalary=$(($totalSalary + $salary));
        ((day++))
done
echo "total working hour of employee is $totalWorkingHour Hrs"
echo "daily wage of the employee is $salary"
echo "monthly wage of the employee is $totalSalary"
