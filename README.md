# xhibit-colorschemes

Colorschemes for xhibit library

### DOWNLOAD ALL THE THEMES AND SEE WITH FZF

```
wget https://raw.githubusercontent.com/glowfi/xhibit-colorschemes/main/run.sh -O ~/.cache/xhibitCol.sh
ls ~/.cache/themes| fzf | xargs -I {} cat ~/.cache/themes/{} | xargs | tr " " "," | xargs -I {} xhibit -rcn t  -ccs "{}"
```

### Try all colorscheme in 1 second interval

```
wget https://raw.githubusercontent.com/glowfi/xhibit-colorschemes/main/run.sh -O ~/.cache/xhibitCol.sh
sh ~/.cache/xhibitCol.sh
```
