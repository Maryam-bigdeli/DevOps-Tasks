#!/usr/bin/env bash 

mkdir mytask
cd mytask 

touch {myfile,other}{1..4}.{txt,doc}

files( * )

result=()
for f in "${files[@]}"; do 
    if [[ $f == myfile-* ]]; then 
         result+=("$f")
    fi
done


printf ' - %s\n' "${result[@]}"
