#!/usr/bin/env bash

function guess {
	ans=$(ls -l | wc -l)
	let ans=ans-1
	echo $ans 
	correct=0
	valid_reponse="^[0-9]+"

	while [[ $correct -eq 0 ]]
	do
		echo "How many files are in this directory?"
		read guess_ans
		if [[ $guess_ans = ~$valid_reponse && $guess_ans -gt -1 && $guess_ans -lt 2147483648 ]]
		then
			echo "You typed: $guess_ans"
			if [[ $guess_ans -eq $ans ]]
			then 
				echo "Congratulations, You guessed correctly!"
				correct=1
			elif [[ $guess_ans -lt $ans ]]
			then 
				echo "The ans is a bit low. Retry."
			else
				echo "Tha ans is a bit high. Retry."
			fi
		else
			echo "Invalid input! Permitted: Numbers from 0 to 2147483647"
		fi
	done
}

echo "Game start!"
guess 
echo "Game end!"