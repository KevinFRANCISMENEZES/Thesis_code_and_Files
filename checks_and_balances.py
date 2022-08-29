import pandas as pd
import numpy as np
my_file = open("acetylomics_renamed.csv")
my_file_read = my_file.readlines()

no_of_non_pae = 0
no_of_pae = 0
list_pae_absent = [] 

for lin in my_file_read:
	column = lin.split(',')
	if column[0].startswith("pae"):
		no_of_pae = no_of_pae+1 #This protein has a kegg version hence the counter get a plus one, no_of_pae at the end is the number of acetylated proteins that will map to a kegg network
	else:
		list_pae_absent.append(column[0])
		print(column[0]) #This prints the proteins that do not have a corresponding kegg identifier
		no_of_non_pae = no_of_non_pae+1 #counter for number of redundant proteins remove one because one of them is the word protein. Hence 25 proteins are redundant

#for z in toygraph_read:
#	z_rows = z.replace('"','').rstrip("\n").split(",")
#	print(z_rows)
#z_rows.to_csv("remapped.csv")
print(no_of_pae)
print(no_of_non_pae)
print(no_of_pae+no_of_non_pae)
list_pae_absent.remove('Protein')
list_pae_absent = np.unique(list_pae_absent)
print(list_pae_absent)
print(len(list_pae_absent))

my_file.close()
