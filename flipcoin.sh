#! /bin/bash -x

H=0
T=0
coin=$(( RANDOM%2 ))
if [ $coin -eq 1 ]
then
	H=$(( H+1 ))
else
	T=$(( T+1 ))
fi
echo "heads"
echo "tails"
