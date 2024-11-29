#!/bin/bash

cd $HOME/Desktop
clear
# 1) crea il repo mergeRepo
rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

#2) crea 3 file più commit
# alt+6 = copia
echo "initial content file1" > file1.txt
echo "initial content file2" > file2.txt
echo "initial content file3" > file3.txt

git add file1.txt file2.txt file3.txt
git status

git commit -m "Initial commit"

git log --oneline

git branch F1
git branch F2
echo 
git log --all --graph --oneline
# punto 3b
git checkout F1
echo "data in file1 branch F1" >> file1.txt
echo "CHe bella frase in file2 branch F1" >> file2.txt
git add file1.txt file2.txt
git commit -m "Commit su F1"

git log --all --graph --oneline

git checkout F2
echo "some data in file1 branch F1" >> file1.txt
echo "CHe bella frase in file2 branch F1" >> file2.txt
git add file1.txt file2.txt
git commit -m "Commit su F2"

git log --all --graph --oneline
echo

# ( m e r g e )
git checkout main
git merge F1
echo
git branch -d F1
git merge F2
nano file1.txt
git add file1.txt
git commit -m "Merged F2 in main"

git log --all --graph --oneline

