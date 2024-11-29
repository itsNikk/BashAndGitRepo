#!/bin/bash

cd $HOME/Desktop
clear

rm -rf mergeTest
git init mergeTest
cd mergeTest

for i in {1..3}; do 
	echo "Intestazione file$i.txt" > file$i.txt
	git add file$i.txt
	git commit -m "C$i"
done

git log --oneline
echo

git branch featureA
git branch featureB

git log --oneline

# alt+6
git checkout featureA
echo "Mod file2 in featureA" >> file2.txt
git add file2.txt
git commit -m "C1 su featureA"

git checkout featureB
echo "Mod file2 in featureB" >> file2.txt
git add file2.txt
git commit -m "C1 su featureB"

git log --oneline --all --graph

git checkout main
git merge featureA

git log --all --graph --oneline
echo
git merge featureB
echo
nano file2.txt
git add file2.txt
git commit -m "Merge fixzed"

git log --all --graph --oneline
