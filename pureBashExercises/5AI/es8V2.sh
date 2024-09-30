#!/bin/bash

string=$1

read -p "Quanti caratteri vorresti estrarre? " charsToRead
echo "${string:0:$charsToRead}"
