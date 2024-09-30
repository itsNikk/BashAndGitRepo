#!/bin/bash

arr=(1 2 3 4 5 6 7 8 9)

# echo $((${arr[0]}+${arr[2]}))

#V2
echo $((${arr[$1]} + ${arr[$2]}))
