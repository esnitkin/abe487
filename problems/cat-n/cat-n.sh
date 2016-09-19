#!/bin/bash

set -u

# first checking # and type of args in input
if [[ $# -eq 1 ]] && [[ -f $1 ]]; then
    file=$1
    i=1
    while read -r line; 
      do
         echo $i $line
         let i++
      done < $file
else
    echo "Usage: Wrong number or type of input files.\n Please provide one file"
fi



