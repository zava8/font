#!/bin/bash -i
############################
cd daunlod/fontdrum/
if ! command -v woff2_compress &> /dev/null; then
    echo "woff2_compress not found. Please install it first."
else
# Loop through all TTF files in the current directory
	for ttf_file in *.ttf; do
		woff2_file="${ttf_file%.ttf}.woff2"
		woff2_compress "$ttf_file" # -o "$woff2_file"
		echo "Converted $ttf_file to $woff2_file"
	done
fi
pwd
ls *.ttf *.woff2
cd ../../
pwd
ls *.ttf *.woff2
############################
