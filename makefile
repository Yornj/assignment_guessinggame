readme:
	echo "# Guessing Name" > readme.md
	temp="## "
	date=$temp$(date)
	echo $date >> readme.md
	number=$(wc -l guessingname.sh | egrep -o [0-9]+)
	echo "### The number of the line is :$number" >> readme.md

