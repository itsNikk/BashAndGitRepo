#!/bin/bash

cd $HOME/Desktop

clear
rm -rf smc
git init smc
cd smc

for i in {1..10}; do
echo "Intestazione file$i" > file$i.txt
git add file$i.txt
git commit -q -m "Initial commit file$i.txt"

	for j in {1..1}; do
		echo "frase$j" >> file$i.txt
		echo "frase$((j+1))" >> file$i.txt
		echo "frase$((j+2))" >> file$i.txt
	done
done

echo "----------------------------"
git status
echo "----------------------------"
sleep 1

for ((i=1; i<10;i+=2)); do
	git add file$i.txt
done

git commit -m "Added mods on odd files"

git status
git log --all --graph --oneline
git rm --cached file6.txt file8.txt

echo "----------------------------"
git status
echo "----------------------------"
sleep 2
echo
git commit -m "removed 6 and 8"
echo

mkdir Saves
git mv file2.txt file4.txt file10.txt Saves/
echo 
git status
sleep 2
git add Saves
echo
git status
sleep 2
git commit -m "Moved some filesss"
echo
git status
echo "-------------------"

git branch FS
git branch FN
git branch HF

git checkout FS
echo "Intestazione file FS" > fileFS.md
echo "qualche info in più" >> file1.txt
echo "Some newbrand new content in f3" >> file3.txt
git add file6.txt fileFS.md file1.txt file3.txt
echo 
git status
sleep 2
git commit -m "Work on FS"

git log --all --graph --oneline
sleep 4
git checkout FN

git rm file9.txt
rm file8.txt
echo "Qualche info importante" >> file1.txt
echo "Some newbrand new content in f3 FNNNN" >> file3.txt
git status
git add file1.txt file3.txt
git commit -m "Removed some trash"
git log --all --graph --oneline

sleep 4
git checkout main

git merge FS 
sleep 4
git merge FN
nano file1.txt file3.txt
git add file1.txt file3.txt
git commit -m "Merged FN in main"

git log --all --graph --oneline
