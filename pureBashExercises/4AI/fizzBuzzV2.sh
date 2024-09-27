#!/bin/bash

# verifico se sono stati inseriti nuovi fizz/buzz number
if [ $# -ne 2 ]; then
	echo "Uso $0 fizzNum BuzzNum"
	exit 1
fi

fizz=$1
buzz=$2

read -p "Quanti numeri FizzBuzz vuoi calcolare?" N

for i in $(seq 1 $N)
do

	if [ $(($i%fizz)) -eq 0 ] && [ $(($i%buzz)) -eq 0 ]; then
		echo "$i:FizzBuzz"
	elif [ $(($i%fizz)) -eq 0 ]; then
		echo "$i:Fizz"
	elif [ $(($i%buzz)) -eq 0 ]; then
		echo "$i:Buzz"
	else
		echo "$i:$i"
	fi
done
