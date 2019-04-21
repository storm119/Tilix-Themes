import os

for var in open("themes.txt","r").readlines() :
	print(var)
	os.system(var)

