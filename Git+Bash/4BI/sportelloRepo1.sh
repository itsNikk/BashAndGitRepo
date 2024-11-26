#!/bin/bash

cd $HOME/Desktop
clear
rm -rf repoEsercizio
#mkdir repoEsercizio
#cd repoEsercizio

#git init
git init repoEsercizio
cd repoEsercizio

echo "Qualcosa" > README.md
echo "------------------"
git status
echo "------------------"
git add README.md
echo
echo "------------------"
git status
echo "------------------"

echo "some  dawta in readme" >> README.md
git status
echo

git commit -m "Initial commit"
echo 
git log --oneline
echo
echo "------------------"
git status
echo "------------------"

git add README.md
git commit -m "modificato readme"
echo
echo "------------------"
git log --oneline
echo "------------------"
git status
echo "------------------"
