import glob
import json

k = glob.glob("$HOME/.cache/themes/*")
s = ""
dict = {}

for i in k:
    with open(f"{i}", "r") as f:
        s = f.read()
    e = i.split("/")[-1].replace(".yml", "")
    s = s.replace('"', "").split("\n")
    s.pop(-1)
    dict[e] = s
    print(dict)
    # break


out_file = open("a.json", "w")

json.dump(dict, out_file, indent=4)

out_file.close()

with open("$HOME/a.py", "w+") as f:
    f.write(dict)
