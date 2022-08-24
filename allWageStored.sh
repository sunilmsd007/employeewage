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
perHourSalary=20;
workingHour=0;
totalSalary=0;
totalWorkingHour=0;
day=1;
declare -A daily_and_totalWage=()
declare -A day_daily_totalWage=()

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
        dailyWage=$(($totalSalary / $day));
        ((day++));

daily_and_totalWage+=([dailyWage]=$dailyWage [totalWage]=$totalSalary)
day_daily_totalWage+=([day]=$day [dailyWage]=$dailyWage [totalWage]=$totalSalary)
done

for key in ${!daily_and_totalWage[*]}
do
   echo "$key=${daily_and_totalWage[$key]}"
done
echo "total working hours is $totalWorkingHour"
for key in ${!day_daily_totalWage[*]}
do
   echo "$key=${day_daily_totalWage[$key]}"
done
