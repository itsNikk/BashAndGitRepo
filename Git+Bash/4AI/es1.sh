#!/bin/bash

# SOlo per comodità...
cd $HOME/Desktop

if [ -z "$1" ]; then
	# TIP: $0 è il nome dello script corrente.. ;)
	echo "Usa: $0 <numeroFileDaCreare>"
	exit 1
fi

N=$1

rm -rf repo_test
mkdir repo_test
cd repo_test
git init

# Crea N file e fai commit per ciascuno
for ((i=1; i<=N; i++)); do
  filename="file$i.txt"
  echo "Contenuto del file $i" > "$filename"
  git add "$filename"
  git commit -m "Commit di $filename"
done

git log --oneline
