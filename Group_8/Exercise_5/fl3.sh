#3. Keressük meg azokat a fájlokat egy könyvtárban és annak alkönyvtáraiban amelyekben az általunk megadott szót tartalmazzák. Első parancssori argumentum a "root mappa", ahonnan induljon a keresés, második argumentum a "keresett szó".

#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <search_word>"
    exit 1
fi

directory_path="$1"
search_word="$2"

find "$directory_path" -type f -exec grep -l "$search_word" {} +