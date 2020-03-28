#!/bin/ksh

predict()
{
echo " Enter Predicted number of files in current location. " 
read number
loc_count=`find . -maxdepth 1 -not -type d | wc -l`
loc_count1=`ls -l | grep ^d | wc -l`
loc_count2=$((loc_count+loc_count1))

if [[ $number = *([0-9]) ]] && [[ ! -z $number ]] && [[ $number > 0 ]]
  then
	if [ $number -ne $loc_count2 ]
	then
		if [ $number -gt $loc_count2 ]
		then
		echo " You have pridicted high number.Please re-predict. "
		else
		echo " You have pridicted low number.Please re-predict. "
		fi
		predict;
	else
	echo " Correct prediction. "
	fi
	exit;
else
echo " Input given is not a valid positive number it should be a positive integer number i.e. greater than 0 with no decimals."
fi
predict;
}
while :
do
  predict
done