#!/usr/bin/env bash

mkdir -p rectangle*
cd rectangle*



read -p "Enter width" width
read -p "ENter length:" length

for ((i=1; i<=length; i++)); do
     for ((j=1; j<=width; j++)); do
        if [[ $i -eq 1 || $i -eq $length || $j -eq 1 || $j -eq $width ]]; then
            printf "* "
        else
           printf "  "
       fi
    done
  printf "\n"
done

