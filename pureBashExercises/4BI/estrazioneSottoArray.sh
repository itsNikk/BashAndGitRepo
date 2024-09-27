#!/bin/bash

array=(10 20 30 40 50)

subArray=(${array[@]:0:3})

echo "I primi 3 elementi dell'array sono: ${subArray[@]}"
