#!/usr/bin/env bash

function guess {
	ans=$(ls -l | wc -l)
	let ans=ans-1
	echo $ans 
	correct=0

	while [[ $correct -eq 0 ]]
	do
		echo "How many files are in this directory?"
		read guess_ans
		echo "You typed: $guess_ans"
		if [[ $guess_ans -eq $ans ]]
		then 
			echo "Congratulations, right guess!"
			correct=1
		elif [[ $guess_ans -lt $ans ]]
		then 
			echo "The ans is a bit low. Retry."
		else
			echo "Tha ans is a bit high. Retry."
		fi
	done
}

echo "Game start!"
guess 
echo "Game end!"