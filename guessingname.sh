echo "Welcome This is guessing number game!"
correct=0

while [[ correct -eq 0 ]]
do
	echo "Guess how many files are in the current directory?"
	read inputnumber
		if [[ $inputnumber -gt 0 ]]
			then
			echo "you entered: $inputnumber "
			correct=1
		else
			echo "You enter wrong format! please enter only a number"
		fi
done



filenumber=`expr $(ls -l . | wc -l) - 1`

function compare {
	while [[ $inputnumber -ne $filenumber ]]
	do
		if [[ $inputnumber -gt $filenumber ]]
			then
			echo "!!your input number is greater than the answer, please re-enter again"
		elif [[ $inputnumber -lt $filenumber ]]
			then
			echo "!!your input number is less than the answer, please re-enter again!!"
		fi
		read inputnumber
		echo "you re-entered: $inputnumber "
	done
	echo "congratulation the number is correct = $filenumber"
}

compare

