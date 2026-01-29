#!/bin/bash

# Cleanup at start
rm -rf fol_1 fol_2 fol_3

# Recreate folders
mkdir fol_1 fol_2 fol_3

# Example file creation
touch fol_1/file_1.txt fol_1/file_2.txt fol_1/file_3.txt
touch fol_2/file_1.txt fol_2/file_2.txt fol_2/file_3.txt
touch fol_3/file_1.txt fol_3/file_2.txt fol_3/file_3.txt

# Set permissions: _1.txt and _3.txt → owner read/write only
for dir in fol_1 fol_2 fol_3; do
  chmod 600 "$dir"/*_1.txt "$dir"/*_3.txt
done

# Set permissions: _2.txt → everyone read/write/execute
for dir in fol_1 fol_2 fol_3; do
  chmod 777 "$dir"/*_2.txt
done

# Job completed message
echo "Job completed"
