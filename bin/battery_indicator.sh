#!/bin/bash

if [[ `uname` == 'Linux' ]]; then
  current_charge=$(cat /proc/acpi/battery/BAT1/state | grep 'remaining capacity' | awk '{print $3}')
  total_charge=$(cat /proc/acpi/battery/BAT1/info | grep 'last full capacity' | awk '{print $4}')
else
  battery_info=`ioreg -rc AppleSmartBattery`
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
fi

let "percents = (100 * current_charge)/total_charge"

if [[ $percents -le 33 ]]; then
	echo -n '#[bg=colour1]'
elif [[ $percents -le 66 ]]; then
	echo -n '#[bg=colour3]'
else
	echo -n '#[bg=colour2]'
fi

echo -n "$percents%"
