#!/bin/bash
# Made by M.Dimitrov

Q () {
	echo "How many files in the current directory?"
}

# extract the number of files in the current directory
count=($(ls | wc -l))

while true
do
	Q
	read guess
	
	# Sanitizer
	re='^[0-9]+$'
	if ! [[ $guess =~ $re ]] 
	then
		 echo "Your guess is invalid! It must be a number!" >&2
	else
		if [ $guess -gt $count ]
		then
			echo "Your guess is larger. Try again."
		else		
			if [ $guess -lt $count ]
			then
				echo "Your guess is smaller. Try again."
			else
				echo "Congratulation! You guessed it!"
				exit 0
			fi
		fi
	fi
done
