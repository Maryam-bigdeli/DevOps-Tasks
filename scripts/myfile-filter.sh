#! /usr/bin/env bash

mkdir -p scripts
cd scripts

touch {myfile,other}{1..4}.{txt,doc}

files=( * )

myfiles=()


for f in "${files[@]}"; do 
     if [[ $f == myfile* ]]; then
           myfiles+=("$f")
     fi
done


printf  ' - %s\n' "${myfiles[@]}"
