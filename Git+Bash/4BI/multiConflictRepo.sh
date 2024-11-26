#!/bin/bash 

cd $HOME/Desktop
clear

rm -rf multiConf
git init multiConf
cd multiConf

for i in {1..13}; do
	echo "Header file$i" > file$i.txt
	git add file$i.txt
	git commit -m "C$i su main"
	if [ $(($i%2)) -ne 0 ]; then
		git branch F$i
	fi
done

git log --oneline --all --graph

echo "---------------------------"
git checkout F5

for i in {1..3}; do
	echo "Modifica su file$i" >> file$i.txt
	git add file$i.txt
	git commit -m "Working on file$i.txt iun F5"
	if ((i==2)); then
	git branch hotfixF5
	fi
done

git log --oneline --all --graph

git checkout hotfixF5

for i in {1..4}; do
	echo "Dati$i dati$i$((i+1))" >> file$i.txt
	git add file$i.txt
	git commit -m "HFC$i: some mods..."
done

git log --oneline --all --graph

echo
echo "-------------"
git checkout F5
git merge hotfixF5

nano file3.txt
git add file3.txt
git commit -m "MERGED hotfixF5 in F5"
git branch -d hotfixF5

git log --oneline --all --graph

git checkout main
sleep 2
git merge F5
