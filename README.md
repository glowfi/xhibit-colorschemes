# xhibit-colorschemes

Colorschemes for xhibit library

### Try all colorscheme in 1 second interval

```
wget https://raw.githubusercontent.com/glowfi/xhibit-colorschemes/main/colorscheme.txt -O ~/.cache/colsx.txt
git clone https://github.com/glowfi/xhibit-colorschemes
mv ~/xhibit-colorschemes/themes ~
rm -rf xhibit-colorschemes

input=~/.cache/colsx.txt
while IFS= read -r line; do
	echo "$line"
	output=$(cat ~/themes/"$line" | xargs | tr " " ",")
	xhibit -ccs "$output" -rcn t
	sleep 1
done <"$input"
```
