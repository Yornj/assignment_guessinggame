echo "# Guessing Name" > readme.md
temp="## "
date=$temp$(date)
echo $date >> readme.md
wc -l guessingname.sh | egrep -o [0-9]+ >> readme.md

