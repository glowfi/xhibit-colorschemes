#!/bin/sh

wget https://raw.githubusercontent.com/glowfi/xhibit-colorschemes/main/colorscheme.txt -O ~/.cache/colsx.txt
git clone https://github.com/glowfi/xhibit-colorschemes
mv ~/xhibit-colorschemes/themes ~/.cache
rm -rf xhibit-colorschemes

input=~/.cache/colsx.txt
while IFS= read -r line; do
	echo "$line"
	output=$(cat ~/.cache/themes/"$line" | xargs | tr " " ",")
	xhibit -ccs "$output" -rcn t
	sleep 1
done <"$input"
