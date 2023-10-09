#1. Írjon egy scriptet amely, parancssori argumentumként vár egy fájlnév értéket amelynek a tartalmalmát szeretné átmásolni a második parancssori argumentumként megadott fájba, ha nincs ilyen fájl hozza létre a scriptünk. (Lényegében egy wrapper a copy felett)

#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_file> <destination_file>"
    exit 1
fi

source_file="$1"
destination_file="$2"


if [ -e "$destination_file" ]; then
    cp "$source_file" "$destination_file"
    echo "Content copied from '$source_file' to '$destination_file'."
else
    touch "$destination_file"
    echo "Destination file '$destination_file' does not exist. Created an empty ?"
    cp "$source_file" "$destination_file" 
fi