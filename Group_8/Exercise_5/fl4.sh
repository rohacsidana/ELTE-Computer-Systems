#4. Írjon egy scriptet amely, parancssori argumentumként vár egy fájlnevet/teljes fájl elérési utat, amelynek tartalmát átírja "nagybetűs megfelelőjükre".

#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi

file_name="$1"

if [ ! -f "$file_name" ]; then
    echo "File '$file_name' not found."
    exit 1
fi

tr '[:lower:]' '[:upper:]' < "$file_name" > "$file_name.tmp"

mv "$file_name.tmp" "$file_name"
echo "All letters in '$file_name' hace been changed to uppercase."

