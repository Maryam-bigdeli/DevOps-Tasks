#!/usr/bin/env bash 

mkdir -p myfile-filter
cd myfile-filter

touch {myfile,other}{1..4}.{txt,doc}

files=( * )     

myfiles=()

result=()
for f in "${files[@]}"; do 
    if [[ $f == myfile* ]]; then 
         myfiles+=("$f")
    fi
done


printf ' - %s\n' "${myfiles[@]}"
