
#! /bin/bash -x

i=0
H=0
T=0
while [ $H -lt 21 -a $T -lt 21 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 1 ]
	then
		H=$(( H+1 ))
	else
		T=$(( T+1 ))
	fi
done
echo "heads" $H
echo "tails" $T
echo "heads won by" $H "times"
echo "tails won by" $T "times"

