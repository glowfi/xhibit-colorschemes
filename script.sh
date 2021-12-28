#!/bin/sh

# DOWNLOAD
git clone https://github.com/rajasegar/alacritty-themes
mv ~/alacritty-themes/themes ~
mkdir ~/th

# EXTRACT
input=~/a.txt
while IFS= read -r line; do
	out=$(cat ~/themes/"$line" | awk '/bright/,0')
	touch ~/th/"$line"
	echo "$out" >>~/th/"$line"
done <"$input"

# SANITIZE
input=~/a.txt
while IFS= read -r line; do
	sed -i 's/bright://g' ~/th/"$line"
	sed -i 's/black://g' ~/th/"$line"
	sed -i 's/red://g' ~/th/"$line"
	sed -i 's/green://g' ~/th/"$line"
	sed -i 's/yellow://g' ~/th/"$line"
	sed -i 's/blue://g' ~/th/"$line"
	sed -i 's/magenta://g' ~/th/"$line"
	sed -i 's/cyan://g' ~/th/"$line"
	sed -i 's/white://g' ~/th/"$line"
	sed -i '/^$/d;s/[[:blank:]]//g' ~/th/"$line"
	sed -i -e "1d" ~/th/"$line"
done <"$input"

rm -rf alacritty-themes
