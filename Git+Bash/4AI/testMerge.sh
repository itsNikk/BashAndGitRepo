#!/bin/bash

cd $HOME/Desktop

rm -rf testMerge
git init testMerge
cd testMerge

touch file1.txt file2.txt file3.txt
echo "Header 2" > file2.txt
# * = WILDCARD -> prendi tutto.
git add *
git commit -m "initial"

git log --oneline

git checkout -b F1
echo "akeyefgbaksyguf" >> file2.txt
git add file2.txt
git commit -m "changes in f1"

git checkout main

git checkout -b F2
echo "mod in f2" >> file2.txt
git add file2.txt
git commit -m "changes in f2"

git checkout main

echo "----------------"
git merge F1
echo "-------------------"
git branch -d F1

echo
echo "------------------"
git merge F2
echo "---------------"

nano file2.txt 
git add file2.txt
git commit -m "Merged F2 in main"
