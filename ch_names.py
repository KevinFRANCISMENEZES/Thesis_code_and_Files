#####Import Pandas for dataframe usage and Numpy for finding unique Ids 
import pandas as pd
import numpy as np
#####Use dataset copy pasted into a fresh file, because the core dataset has multiple sheets 
dataset = pd.read_excel (r'C:/Users/Kevin/Documents/SublimeShiz/Acetylomics LUZ19gp13_Supplementary dataset S1.xlsx', sheet_name=1) 
#dataset.to_csv("acetylomics_csv.csv",index=False)
#network = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph100.csv')
#print(network)
#network_read = network.readlines()
#####Read the file that contains Pseudomonas IDs mapped to their KEGG Ids
proteins_renamed = open("Full_genome_mapped.csv")
##Use the data in the original network files(containing KEGG IDs) as dataframes
#network = network.replace('"','')
#network2 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_Lysine_degradation.csv")
#network3 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_aagm.csv')
#network4 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Lysine_combined.csv')
#network5 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_GST.csv')
network6 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_CMM.csv")
#network7 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_VLID.csv")
#network8 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_VLIB.csv")
#network9 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_AB.csv")
#network10 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_APM.csv")
#network11 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_HM.csv")
#network12 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_TM.csv")
#network13 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_PM.csv")
#network14 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_TrpM.csv")
#network15 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_PaTTrpB.csv")
#network16 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_bAM.csv")
#network17 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_ThTM.csv')
#network18 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_PPM.csv")
#network19 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_ScM.csv')
#network20 = pd.read_csv(r"C:/Users/Kevin/Documents/toyGraph_CaM.csv")
#network21 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_DAM.csv')
#network22 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_GlutathioneM.csv')
network23 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Amino_Acid_Pathways.csv')
network24 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Carbohydrate_Metabolism.csv')
network25 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Energy_Metabolisms.csv')
network26 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Lipid_Metabolisms.csv')
network27 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Nucletide_Metabolisms.csv')
network28 = pd.read_csv(r'C:/Users/Kevin/Documents/toyGraph_Glycan_biosynth_Metabolism.csv')
network29 = pd.read_csv(r'C:/Users/Kevin/Documents/Metabolism_cofactors_vitamins.csv')
network30 = pd.read_csv(r'C:/Users/Kevin/Documents/Metabolism_terpenoids_polyketides.csv')
network31 = pd.read_csv(r'C:/Users/Kevin/Documents/Biosynthesis_other_secondary_metabolites.csv')
network32 = pd.read_csv(r'C:/Users/Kevin/Documents/Xenobiotics_biodegradation_metabolism.csv')
network33 = pd.read_csv(r'C:/Users/Kevin/Documents/Quorum_sensing_Biofilm.csv')
network34 = pd.read_csv(r'C:/Users/Kevin/Documents/Drug_resistance.csv')
network35 = pd.read_csv(r'C:/Users/Kevin/Documents/Genetic_information_processing.csv')
network36 = pd.read_csv(r'C:/Users/Kevin/Documents/Environmental_information_processing.csv')
network37 = pd.read_csv(r'C:/Users/Kevin/Documents/Bacterial_Chemotaxis.csv')

#print(network_read)
#read all lines in the key
#print(network['from'])
#print('newidea')
#print(network['to'])
#####Read the lines in the file
proteins_renamed_read = proteins_renamed.readlines()
###Code before converting into a function
#for i in proteins_renamed_read:
#	columns = i.replace('"','').rstrip("\n").split(",")
#	#print(columns[1])
#	for value in network['from']:
#		if value == columns[1]:
#			network['from'] = network['from'].replace(value,columns[0])
#	for values in network['to']:
#		if values == columns[1]:
#			network['to'] = network['to'].replace(values,columns[0])
#print(network)
#network.to_csv("toygraph_network.csv",index=False)


#####Function to convert the data in the network from KEGG IDs to Uniprot IDs
####Pre: Takes in a network, originally containing KEGG IDs converts it
####Post: Returns a modified network containing UNIPROT IDs inplace of KEGG IDs
def KEGG_id_to_Uniprot_id(sample_network):  
	sample_network = sample_network.replace('"','')#Strip the '"'(Double quotes)contained within a file with an empty space 
	for protein in proteins_renamed_read:#For a line in the dictionary
		column = protein.replace('"','').rstrip("\n").split(",")#Strip any characters that may exist and cause issues, split the columns by the commas
		#print(column[1])
		for Kegg_id in sample_network['from']: #For a value in the given network's 'from' column
			if Kegg_id == column[1]:#If that value is equal to the the value in the column in the mapped IDs
				#print(True)
				sample_network['from'] = sample_network['from'].replace(Kegg_id,column[0])#Replace the ID(KEGG ID) in the dataframe with the uniprot id in that same column
		for Kegg_ids in sample_network['to']:#For a value in the given networks 'to' column
			if Kegg_ids == column[1]:#If that value is equal to the the value in the column in the mapped IDs
				sample_network['to'] = sample_network['to'].replace(Kegg_ids,column[0])#Replace the ID(KEGG ID) in the dataframe with the uniprot id in that same column
	return sample_network #Return the network now having UNIPROT IDs instead of KEGG IDs

#####Function to find the number of proteins in the network that undergo acetylation
####Pre: Takes the modified network and an acetylomics dataset as an input to find the number of acetylated proteins
####Post: Returns the number of proteins in a given network that undergo acetylation
def Number_of_acetylated_proteins(protein_network,acetylomics_dataset):
	proteins = [] #Empty list to hold the acetylated proteins only
	other_proteins = [] #Empty list to hold all the proteins in the network(acetylated and non acetylated ones)
	
	for protein_id in acetylomics_dataset['Protein']:#For a protein ID in acetylomics dataset
		for prot in protein_network['from']:#Protein ID in the network's 'from' column
			other_proteins.append(prot)#Append protein to the list that will contain all proteins
			
			if protein_id == prot:#If protein in acetylomics dataset matches protein in the network
				proteins.append(prot)#Append the protein to the list that will contain the acetylated proteins
		for pro in protein_network['to']:#Protein ID in the network's 'to' column
			other_proteins.append(pro)#Append proteins in this column to the list that will contain all proteins in the network as well
			if protein_id == pro:#If protein in acetylomics dataset matches protein in the network
				proteins.append(pro)#Append the protein to the list that will contain the acetylated proteins


	other_proteins_unique=np.unique(other_proteins)#A list containing the proteins in the whole network with no duplicates	
			
	proteins_unique = np.unique(proteins)#A list containing the acetylated proteins with no duplicates
	proportion = (len(proteins_unique)/len(other_proteins_unique))#Proportion of proteins undergoing acetylation
	
	print(proteins_unique)#Print the list of the acetylated proteins
	print(len(other_proteins_unique))#Print the number of proteins in the network
	
	print(round(proportion,3))#Print the proportion of proteins that undergo acetylation

	return len(proteins_unique)#Number of proteins that undergo acetylation is returned as the result of the function


###### For Efficiency, comment out the ones for which files are already made


#network1 = KEGG_id_to_Uniprot_id(network)
#network1.to_csv('toygraph_network_LB.csv',index=False)
#network2 = KEGG_id_to_Uniprot_id(network2)

#network2.to_csv('toygraph_network_LD.csv',index=False)
#network3 = KEGG_id_to_Uniprot_id(network3)
#network3.to_csv('toygraph_network_AAGM.csv',index=False)
#network4 = KEGG_id_to_Uniprot_id(network4)
#network4.to_csv('toygraph_network_LB_LD.csv',index = False)
#network5 = KEGG_id_to_Uniprot_id(network5)
#network5.to_csv('toygraph_network_GST.csv',index = False)
network6 = KEGG_id_to_Uniprot_id(network6)
network6.to_csv('toygraph_network_CMM.csv',index=False)
No_of_CMM_Prot = Number_of_acetylated_proteins(network6,dataset)
print(No_of_CMM_Prot)
#network7 = KEGG_id_to_Uniprot_id(network7)
#network7.to_csv('toygraph_network_VLID.csv',index = False)
#network8 = KEGG_id_to_Uniprot_id(network8)
#network8.to_csv('toygraph_network_VLIB.csv',index = False)
#network9 = KEGG_id_to_Uniprot_id(network9)
#network9.to_csv('toygraph_network_AB.csv',index=False)
#network10 = KEGG_id_to_Uniprot_id(network10)
#network10.to_csv('toygraph_network_APM.csv',index=False)
#network11 = KEGG_id_to_Uniprot_id(network11)
#network11.to_csv('toygraph_network_HM.csv',index=False)
#network12 = KEGG_id_to_Uniprot_id(network12)
#network12.to_csv('toygraph_network_TM.csv',index=False)
#network13 = KEGG_id_to_Uniprot_id(network13)
#network13.to_csv('toygraph_network_PM.csv',index=False)
#network14 = KEGG_id_to_Uniprot_id(network14)
#network14.to_csv('toygraph_network_TrpM.csv',index=False)
#network15 = KEGG_id_to_Uniprot_id(network15)
#network15.to_csv('toygraph_network_PaTTrpB.csv',index=False)
#network16 = KEGG_id_to_Uniprot_id(network16)
#network16.to_csv('toygraph_network_bAM.csv',index=False)
#network17 = KEGG_id_to_Uniprot_id(network17)
#network17.to_csv('toygraph_network_ThTM.csv',index=False)
#etwork18 = KEGG_id_to_Uniprot_id(network18)
#network18.to_csv('toygraph_network_PPM.csv',index=False)
#network19 = KEGG_id_to_Uniprot_id(network19)
#network19.to_csv('toygraph_network_ScM.csv',index=False)
#network20 = KEGG_id_to_Uniprot_id(network20)
#network20.to_csv("toygraph_network_CaM.csv",index=False)
#network21 = KEGG_id_to_Uniprot_id(network21)
#network21.to_csv("toygraph_network_DAM.csv",index=False)
#network22 = KEGG_id_to_Uniprot_id(network22)
#network22.to_csv("toygraph_network_GlutathioneM.csv",index=False)
network23 = KEGG_id_to_Uniprot_id(network23)
network23.to_csv("toygraph_network_Amino_Acid_Pathways.csv",index=False)

No_of_Prot = Number_of_acetylated_proteins(network23,dataset)


print(No_of_Prot)
network24 = KEGG_id_to_Uniprot_id(network24)
No_of_carbohydrate_metabolism = Number_of_acetylated_proteins(network24,dataset)
print(No_of_carbohydrate_metabolism)
network24.to_csv("toygraph_network_Carbohydrate_Metabolism.csv",index=False)
network25 = KEGG_id_to_Uniprot_id(network25)
No_of_Energy_metabolism = Number_of_acetylated_proteins(network25,dataset)
print(No_of_Energy_metabolism)
network25.to_csv("toygraph_network_Energy_Metabolism.csv",index=False)
network26 = KEGG_id_to_Uniprot_id(network26)
No_of_Lipid_metabolism = Number_of_acetylated_proteins(network26, dataset)
print(No_of_Lipid_metabolism)
network26.to_csv('toygraph_network_Lipid_Metabolism.csv',index=False)
network27 = KEGG_id_to_Uniprot_id(network27)
No_of_Nucleotide_metabolism = Number_of_acetylated_proteins(network27, dataset)
print(No_of_Nucleotide_metabolism)
network27.to_csv('toygraph_network_Nucleotide_Metabolism.csv',index=False)
network28 = KEGG_id_to_Uniprot_id(network28)
No_of_Glycan_metabolism = Number_of_acetylated_proteins(network28, dataset)
print(No_of_Glycan_metabolism)
network28.to_csv('toygraph_network_Glycan_biosynth_Metabolism.csv',index=False)

network29 = KEGG_id_to_Uniprot_id(network29)
No_of_Metabolism_cofactors_vitamins = Number_of_acetylated_proteins(network29, dataset)
print(No_of_Metabolism_cofactors_vitamins)
network29.to_csv('Network_Metabolism_cofactors_vitamins.csv',index=False)

network30 = KEGG_id_to_Uniprot_id(network30)
No_of_Metabolism_terpenoids_polyketides = Number_of_acetylated_proteins(network30, dataset)
print(No_of_Metabolism_terpenoids_polyketides)
network30.to_csv('Network_Metabolism_terpenoids_polyketides.csv',index=False)

network31 = KEGG_id_to_Uniprot_id(network31)
No_of_Biosynthesis_other_secondary_metabolites = Number_of_acetylated_proteins(network31, dataset)
print(No_of_Biosynthesis_other_secondary_metabolites)
network31.to_csv('Network_Biosynthesis_other_secondary_metabolites.csv',index=False)

network32 = KEGG_id_to_Uniprot_id(network32)
No_of_Xenobiotics_biodegradation_metabolism = Number_of_acetylated_proteins(network32, dataset)
print(No_of_Xenobiotics_biodegradation_metabolism)
network32.to_csv('Network_Xenobiotics_biodegradation_metabolism.csv',index=False)

network33 = KEGG_id_to_Uniprot_id(network33)
No_of_Quorum_sensing = Number_of_acetylated_proteins(network33, dataset)
print(No_of_Quorum_sensing)
network33.to_csv('Network_Quorum_sensing_Biofilm.csv',index=False)

network34 = KEGG_id_to_Uniprot_id(network34)
No_of_Drug_resistance = Number_of_acetylated_proteins(network34, dataset)
print(No_of_Drug_resistance)
network34.to_csv('Network_Drug_resistance.csv',index=False)

network35 = KEGG_id_to_Uniprot_id(network35)
No_of_Environmental_information_processing = Number_of_acetylated_proteins(network35, dataset)
print(No_of_Environmental_information_processing)
network35.to_csv('Network_Genetic_information_processing.csv',index=False)

network36 = KEGG_id_to_Uniprot_id(network36)
No_of_Two_Component_System = Number_of_acetylated_proteins(network36, dataset)
print(No_of_Two_Component_System)
network36.to_csv('Network_Environmental_information_processing.csv',index=False)

network37 = KEGG_id_to_Uniprot_id(network37)
No_of_Bacterial_Chemotaxis = Number_of_acetylated_proteins(network37, dataset)
print(No_of_Bacterial_Chemotaxis)
network37.to_csv('Network_Bacterial_Chemotaxis.csv',index=False)



proteins_renamed.close()