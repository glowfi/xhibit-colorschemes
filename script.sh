#!/bin/bash
# input=~/a.txt
# while IFS= read -r line; do
# 	out=$(cat ~/themes/"$line" | awk '/bright/,0')
# 	touch ~/th/"$line"
# 	echo "$out" >>~/th/"$line"
# done <"$input"

# input=~/a.txt
# while IFS= read -r line; do
# sed -i 's/bright://g' ~/th/"$line"
# sed -i 's/black://g' ~/th/"$line"
# sed -i 's/red://g' ~/th/"$line"
# sed -i 's/green://g' ~/th/"$line"
# sed -i 's/yellow://g' ~/th/"$line"
# sed -i 's/blue://g' ~/th/"$line"
# sed -i 's/magenta://g' ~/th/"$line"
# sed -i 's/cyan://g' ~/th/"$line"
# sed -i 's/white://g' ~/th/"$line"
# sed -i '/^$/d;s/[[:blank:]]//g' ~/th/"$line"
# sed -i -e "1d" ~/th/"$line"
# exit
# 	out=$(cat ~/themes/"$line" | awk '/bright/,0')
# 	touch ~/th/"$line"
# 	echo "$out" >>~/th/"$line"
# done <"$input"

input=~/a.txt
while IFS= read -r line; do
	echo "$line"
	output=$(cat ~/th/"$line" | xargs | tr " " ",")
	xhibit -ccs "$output" -rcn t
	sleep 1
	# exit
done <"$input"
