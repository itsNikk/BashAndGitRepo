#!/bin/bash

cd $HOME/Desktop
clear

# punto 1 - INIT
rm -rf MergeRepo
git init MergeRepo
cd MergeRepo

#punto ii
for i in {1..3}; do
	echo "Intestazione file$i" > file$i.txt
	git add file$i.txt
	git commit -m "C$i"
done

git log --oneline

git status
echo
git branch featureA
git branch featureB

# punto 4 - modifica f2 su ogni branch
git checkout featureA
# alt+6 = copia
echo "Modifica in freature a" >> file2.txt
git add file2.txt
git commit -m "C1 in featureA"

echo
git log --oneline --all --graph

git checkout featureB
echo "Modifica in freat B" >> file2.txt
git add file2.txt
git commit -m "C1 in featureB"

git log --oneline --all --graph

# punto 6) merge main -> fa
git checkout main
echo "---------------"
git merge featureA
echo "---------------"
git log --oneline --all --graph
git branch -d featureA

git merge featureB
nano file2.txt
git add file2.txt
git commit -m "Merged FB in main"

git log --all --graph --oneline
