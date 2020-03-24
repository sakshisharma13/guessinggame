#!/bin/ksh

predict()
{
echo " Enter Predicted number of files in current location. " 
read number
loc_count=` find . -maxdepth 1 -not -type d | wc -l`
if [[ $number = *([0-9]) ]]
  then
	if [ $number -ne $loc_count ]
	then
		if [ $number -gt $loc_count ]
		then
		echo " You have pridicted high number.Please re-predict. "
		else
		echo " You have pridicted low number.Please re-predict.  "
		fi
		predict;
	else
	echo " Correct prediction. "
	fi
	exit;
else
echo " Input given is not a number. "
fi
predict;
}
while :
do
  predict
done