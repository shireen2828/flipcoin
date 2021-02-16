
#! /bin/bash -x

H=0
T=0
diff=0
while [ $H -lt 21 -a $T -lt 21 -o $diff -lt 2 -a $diff -gt -2 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 1 ]
	then
		H=$(( H+1 ))
	else
		T=$(( T+1 ))
	fi
	diff=$(( H-T ))
done
echo "heads" $H
echo "tails" $T
echo
echo "heads won by" $H "times"
echo "tails won by" $T "times"
if [ $H -gt $T ]
then
	echo "heads won" $diff "times"
else
	echo "tails won" $(( -1*diff )) "times"
fi

