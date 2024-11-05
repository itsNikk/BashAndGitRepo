#!/bin/bash

cd $HOME/Desktop

read -p "Dammi il percorso che vuoi aggiungere al repo: " path
# "" = strong quoting 
# -d <stringa> = true se stringa è una directory ed eesite
if [ -d ${path} ];
then
	cd $path
	rm -rf .git
	git init
	git add *.txt
	git status
	echo 
	git commit -m "Tutti i txt aggiunti"
fi
