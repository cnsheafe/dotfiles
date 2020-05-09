import sys

desktopEntries = sys.stdin.read().split('\n')
# TODO: Take path of exclude to be an argument
excludedDestkopEntriesFd = open("list.txt", "r")
excludedDestkopEntries = excludedDestkopEntriesFd.read().split('\n')

for entry in desktopEntries:
    if (entry in excludedDestkopEntries):
        pass
    else:
        fd          = open(entry, 'a+')
        fd.write("NoDisplay=true")
        fd.close()

excludedDestkopEntriesFd.close()
