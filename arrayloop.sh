#!/bin/bash

echo " Welcome to Shell Scripting Program: Randomly generated values and Computations stored with an array";

	# Generate random values
a=$((RANDOM%89+10));
b=$((RANDOM%89+10));
c=$((RANDOM%89+10));

echo "Random Numbers: " $a $b $c;

expr[0]=$(($a+$b*$c));
expr[1]=$(($a*$b+$c));
expr[2]=$(($a+$b/$c));
expr[3]=$(($a%$b+$c));

echo "Before sorting an array : "${expr[@]};

for ((i=0;i<${#expr[@]};i++))
do
	for ((j=i+1;j<${#expr[@]};j++))
	do
		if [ ${expr[$i]} -lt ${expr[$j]} ]
		then
			temp=${expr[$i]};
			expr[$i]=${expr[$j]};
			expr[$j]=$temp;
		fi
	done
done

echo "After sorting an array (Descending) : "${expr[@]};


