#2. A menu.txt fájlból válogassa ki azokat a sorokat amelyek tartalmazzák a "bor" szót és irja ki a terminálra. A "bor" szót parancssori argumentumként adja meg.

#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_file> <search_word>"
    exit 1
fi

file_name="$1"
search_word="$2"

grep -i "$search_word" "$file_name"

