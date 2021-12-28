# xhibit-colorschemes

Colorschemes for xhibit library

### Try all colorscheme in 1 second interval
```
wget https://raw.githubusercontent.com/glowfi/xhibit-colorschemes/main/colorscheme.txt -O ~/.cache/colsx.txt
input=~/.cache/colsx.txt
while IFS= read -r line; do
	echo "$line"
	output=$(cat ~/th/"$line" | xargs | tr " " ",")
	xhibit -ccs "$output" -rcn t
	sleep 1
done <"$input"
```
