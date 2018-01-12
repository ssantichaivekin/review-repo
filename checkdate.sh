
#!/usr/bin/env bash

days=(Mon Tue Wed Thu Fri Sat Sun)
max=0
max_day=None

for day in "${days[@]}"
do
  count=$( grep "Date: *$day" $1 | wc -l)
  echo $day $count
  if (( count > day ))
  then
    (( max = count ))
    max_day=$day
  fi
done
echo $max_day
  
