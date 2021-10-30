#!/bin/bash

read path 
echo "Displaying names of all files from $path"


function read_files() {

  for file in $1/* 
  do
    if [[ -d $file ]]; then
      read_files "$file"
    else
      echo "$file"
    fi
  done
}

read_files $path
