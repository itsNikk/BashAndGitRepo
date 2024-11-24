#!/bin/bash

cd $HOME/Desktop
clear

rm -rf multiConfRepo
git init multiConfRepo
cd multiConfRepo

numFiles=13

for i in {1..13}; do
	echo "Header file $i" > file$i.txt
	git add file$i.txt
	git commit -qm "C$i main"
	if ((i % 2 != 0)); then
	git branch F$i
	fi
done

git checkout F5

for i in {1..3}; do
	echo "Modifica su file$i" >> file$i.txt
	git add file$i.txt
	if ((i==2)); then
		git branch hotfixF5
	fi
	git commit -m "Working on file$i.txt in F5"
done

git checkout hotfixF5
for i in {1..4}; do
	for j in {1..3}; do
		echo "Dat$j dati$j$((j+1)) dati$j$((j+2))" >> file$i.txt
	done
	git add file$i.txt
	git commit -m "HFC$i: Some mods in hotfix"
done

echo
git checkout F5
git merge hotfixF5
nano file2.txt
nano file3.txt
git add file2.txt file3.txt
git commit -m "Merged fixxxed"
git branch -d hotfixF5

git checkout main
git merge F5

git log --oneline --all --graph
