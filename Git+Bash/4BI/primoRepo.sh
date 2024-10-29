#!/bin/bash

read -p "Inserisci il percorso della directory: " dir

cd "$dir"

git init
git add *.txt

git status

git commit -m "Aggiunti file di testo iniziali"

