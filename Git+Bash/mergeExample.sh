#!/bin/bash

cd $HOME/Desktop
#mkdir mergeRepo
#cd mergeRepo
#git init

# 1) crea repo in cartella
rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

#2) 3 volte, crea file e fai commit

for i in {1..3}
do
echo "Header del file${i}.txt" > file${i}.txt
git add "file${i}.txt"
git commit -m "Add file${i}.txt"
done

git status
git log --oneline

# 3) crea branch FeatuerA e FeatureB
git checkout -b featureA
echo "Una modifica da feature A" >> file2.txt
git add file2.txt
git commit -m "File 2 modificato FeatureA"

git log --oneline

git checkout main
git checkout -b featureB
echo "Una modifica da FeatureB" >> file2.txt
git add file2.txt
git commit -m "Modifica in FetureB di file2"

#) 4 merge simulation...
git checkout main
git merge featureA

echo "Merge con feature a SUCCESSFULL!"

git merge featureB
nano file2.txt
git add file2.txt
git commit -m "Merge B OK!"

# che succede?
git log --oneline
