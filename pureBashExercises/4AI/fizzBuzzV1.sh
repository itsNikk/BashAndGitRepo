#!/bin/bash

for i in {1..100}
do

	if [ $(($i%3)) -eq 0 ] && [ $(($i%5)) -eq 0 ]; then
		echo "$i:FizzBuzz"
	elif [ $(($i%3)) -eq 0 ]; then
		echo "$i:Fizz"
	elif [ $(($i%5)) -eq 0 ]; then
		echo "$i:Buzz"
	else
		echo "$i:$i"
	fi
done
