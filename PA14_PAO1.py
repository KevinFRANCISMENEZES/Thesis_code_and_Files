import pandas as pd
import numpy as np 

#To replicate, just change the directories of the files according to where they are saved on your system.
df = pd.read_csv('C:/Users/Kevin/Documents/PA14_pao1_ids.csv') ##Contains the Table S-1 which contains the gene name in PAO11 mapped to the gene name in PA14
superdict = open('C:/Users/Kevin/Downloads/PA14_true_dict.csv')##Contains gene names of PAO1 mapped to their identifier.
superdict_read = superdict.readlines()
df2 = pd.read_excel('C:/Users/Kevin/Documents/PA14_acetylomics.xlsx')##The acetylomics part of the dataset, i.e table s-2
df3 = pd.read_excel('C:/Users/Kevin/Documents/SublimeShiz/Acetylomics LUZ19gp13_Supplementary dataset S1.xlsx', sheet_name=1)# Acetylomics dataset of PAO1, where a column will be added
network = pd.read_csv('C:/Users/Kevin/Documents/SublimeShiz/toygraph_network_Amino_Acid_Pathways.csv')
#print(df3['Positions'])
count = 0
#df['Entry'] = np.nan
#print(df['Entry'])

#print(df['Accession number in PAO1'])

for entry in superdict_read:##For entry in dict that has PAO1 gene names mapped to the corresponding uniprot identifiers 
	column = entry.replace('"','').split(',')
	for entries in df['Accession number in PAO1']:##For PAO1 gene name in this column 
		if entries == column[0]:## If these gene names match
			df['Accession number in PAO1'] = df['Accession number in PAO1'].replace(entries,column[1])##Replace gene name with UNIPROT identifier

superdict.close()

df.to_csv('PA14_initial.csv',index = False)##Safe file for reference, also makes it easier to read by line and make changes, rather than dataframes
final_change = open('PA14_initial.csv')
final_change_read = final_change.readlines()

for final_entry in final_change_read: ##For each line in file
	columns = final_entry.split(',')## Separate by commas columns[1] is the second column, containing the PA14 gene name
	for mini_entry in df2['Accession number in PA14']: ## One mini entry is the PA14 gene name
		if mini_entry == columns[1]:
			df2['Accession number in PA14'] = df2['Accession number in PA14'].replace(mini_entry,columns[11])## columns[11] is the 12th column containing the PAO1 identifiers. Thus we get the acetylomics dataset of PA14, but with the Uniprot identifier number. Which can now connect to the acetylomics dataset.

df3['PA14_biosynthesis'] = df3.apply(lambda row: row.Protein, axis=1) ##Add column that will(in the end) have values denoting its presence or absence in PA14. For now it is a duplicate of the protein column
#print(df3)
proteins = []
#print(df3['PA14'])
#present_PA14_biosynthesis = {} 


##Working is similar in principle to the KEGG_id_to_Uniprot_id function 
for protein in df2['Accession number in PA14']: #For each entry in this column, made up of PAO1 identifiers. 
	#print(protein)
	for prot in network['from']:# For identifier uniprot id in network column from(source column)
		if prot == protein: # If the identifiers match
			proteins.append(protein)## Append to the list
	for pro in network['to']: # For identifier uniprot id in network column to(target column)
		if pro == protein:# If the identifiers match
			proteins.append(protein)## Append to the list
	proteins_list = list(np.unique(proteins)) #Keep only unique proteins
print(proteins_list)# Print the proteins in the dataset that undergo acetylation

present_in_PA14_list=[]## List that will contain proteins that undergo acetylation in both in both PAO1 and PA14
for x in proteins_list:#For each protein identifier in this list
	for y in df3['PA14_biosynthesis']:# For each identfier in this column
		if x==y:#If they match
			present_in_PA14_list.append(x)#Append to this list
			df3['PA14_biosynthesis'] = df3['PA14_biosynthesis'].replace(y,15)#Replace the protein identifier with a number, 15 representing presence

unique_present_PA14 = np.unique(present_in_PA14_list) #Store only unique ids
print(unique_present_PA14)#Print the ids
df3.loc[df3['PA14_biosynthesis']!= 15, 'PA14_biosynthesis'] = 0#If the protein does not undergo acetylation in PA14 and PAO1, it becomes a zero



#print(df3)



df2.to_csv('PA14_acetylomics_final_PAO1_IDs.csv',index = False) 
df3.to_excel("Acetylomics_PAO1_PA14.xlsx",index = False)

final_change.close()
