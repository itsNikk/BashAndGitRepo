#!/bin/bash

cd $HOME/Desktop
clear
#punto 1
rm -rf MergeRepo
git init MergeRepo
cd MergeRepo

# punto 2
for i in {1..3}; do
echo "Intestazione file$i.txt" > file$i.txt
git add file$i.txt
git commit -m "Aggiunto file$i.txt"
echo "---------------"
git log --oneline
echo "---------------"
done

echo
# punto 3 - BRANCHING
git branch FA
git branch FB
git log --oneline
echo

git checkout FA
nano file2.txt

git add file2.txt
git commit -m "Modificato file2 su FA"

git checkout FB
nano file2.txt
git add file2.txt
git commit -m "Modficiato file2.txt su FB"
echo
echo "----------------"
git log --all --graph --oneline
echo "----------------"
echo

git checkout main
echo "----------------"
git merge FA
echo "----------------"
git log --oneline --graph --all
echo
echo "----------------"
git merge FB
echo "----------------"
nano file2.txt
git add file2.txt
git commit -m "Merged FB in main"
echo 

git branch -d FA
git branch -d FB

git log --all --graph --oneline
