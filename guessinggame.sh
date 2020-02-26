#!/user/bin/env bash
#filename: guessinggame.sh

count=$(ls | wc -l)
echo "Guess file count of current directory"

function guess_count {

while :
do
	read guess
	if [[ $guess -gt $count ]]
	then
		echo "Guess is too high.."
		continue
	elif  [[ $guess -lt $count ]]
	then
		echo "Guess is too low.."
		continue
	else 
		echo "Congratulation!! You got correct value.."
		break
	
	fi
done
}

guess_count