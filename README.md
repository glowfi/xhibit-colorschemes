# xhibit-colorschemes

Colorschemes for xhibit library

### DOWNLOAD ALL THE THEMES AND SEE WITH FZF

```
git clone https://github.com/glowfi/xhibit-colorschemes
mv ~/xhibit-colorschemes/themes ~/.cache
rm -rf xhibit-colorschemes
ls ~/.cache/themes| fzf | xargs -I {} cat ~/.cache/themes/{} | xargs | tr " " "," | xargs -I {} xhibit -rcn t  -ccs "{}"
```

### Try all colorscheme in 1 second interval

```
wget https://raw.githubusercontent.com/glowfi/xhibit-colorschemes/main/run.sh -O ~/.cache/xhibitCol.sh
sh ~/.cache/xhibitCol.sh
```
