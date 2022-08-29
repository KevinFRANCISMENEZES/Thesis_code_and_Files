if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("KEGGgraph")
BiocManager::install("pathview")



library(KEGGgraph)

library(pathview)
library(tidyverse)
library(dplyr)
download.kegg(pathway.id = "01230", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00310", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))

download.kegg(pathway.id = "01100", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Carbohydrate Metabolism
download.kegg(pathway.id = "00010", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00020", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00030", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00040", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00051", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00052", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00053", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00500", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00520", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00620", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00630", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00640", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00650", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00660", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00562", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Energy metabolism

download.kegg(pathway.id = "00190", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00680", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00910", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00920", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Lipid metabolism
download.kegg(pathway.id = "00061", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00071", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00561", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00564", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00565", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00600", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00590", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00592", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "01040", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))

#Nucleotide metabolism
download.kegg(pathway.id = "00230", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00240", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Amino acid metabolism
download.kegg(pathway.id = "00250", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00260", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00270", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00280", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00290", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00220", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00330", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00340", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00350", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00360", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00380", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00400", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Metabolism of other amino acids
download.kegg(pathway.id = "00410", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00430", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00440", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00450", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00460", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00470", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00480", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Glycan biosynthesis and metabolism
download.kegg(pathway.id = "00540", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00541", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00550", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00552", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Metabolism of cofactors and vitamins
download.kegg(pathway.id = "00730", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00740", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00750", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00760", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00770", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00780", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00785", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00790", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00670", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00860", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00130", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Metabolism of terpenoids and polyketides
download.kegg(pathway.id = "00900", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00903", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00281", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00523", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "01053", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Biosynthesis of other secondary metabolites
download.kegg(pathway.id = "00332", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00261", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00521", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00525", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00401", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00405", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00999", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00997", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
#Xenobiotics biodegradation and metabolism
download.kegg(pathway.id = "00362", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00627", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00364", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00625", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00361", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00623", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00622", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00633", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00643", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00791", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00930", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00626", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))

#Cellular processes. i.e Quorum sensing and Biofilm formation 
download.kegg(pathway.id = "02024", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "02025", species = "pae", kegg.dir = ".",
              file.type=c("xml", "png"))

#Drug resistance: antimicrobial
download.kegg(pathway.id = "01501", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "01502", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "01503", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Transcription
download.kegg(pathway.id = "03020", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Translation
download.kegg(pathway.id = "03010", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "00970", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Folding, sorting and degradation
download.kegg(pathway.id = "03060", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "04122", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03018", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Replication and repair
download.kegg(pathway.id = "03030", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03410", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03420", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03430", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03440", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03450", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Information processing in viruses
download.kegg(pathway.id = "03250", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Membrane transport
download.kegg(pathway.id = "02010", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "02060", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "03070", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Signal transduction
download.kegg(pathway.id = "02020", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
#Cell motility
download.kegg(pathway.id = "02030", species = "pae", kegg.dir = ".",
              file.type=c("xml"))
download.kegg(pathway.id = "02040", species = "pae", kegg.dir = ".",
              file.type=c("xml"))

##Biosynthesis of Amino Acids PA14
download.kegg(pathway.id = "00250", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00260", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00270", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00280", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00290", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00300", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00310", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00220", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00330", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00340", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00350", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00360", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00380", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))
download.kegg(pathway.id = "00400", species = "pau", kegg.dir = ".",
              file.type=c("xml", "png"))


#Carbohydrate Metabolism
toygraph1 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00010.xml", expandGenes=TRUE)
toygraph1
toygraph2 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00020.xml", expandGenes=TRUE)
toygraph2
toygraph3 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00030.xml", expandGenes=TRUE)
toygraph3
toygraph4 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00040.xml", expandGenes=TRUE)
toygraph4
toygraph5 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00051.xml", expandGenes=TRUE)
toygraph5
toygraph6 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00052.xml", expandGenes=TRUE)
toygraph6
toygraph7 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00053.xml", expandGenes=TRUE)#Ascorbate and aldarate metabolism
toygraph7
toygraph8 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00500.xml", expandGenes=TRUE)
toygraph8
toygraph9 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00520.xml", expandGenes=TRUE)
toygraph9
toygraph10 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00620.xml", expandGenes=TRUE)
toygraph10
toygraph11 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00630.xml", expandGenes=TRUE)
toygraph11
toygraph12 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00640.xml", expandGenes=TRUE)
toygraph12
toygraph13 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00650.xml", expandGenes=TRUE)
toygraph13
toygraph14 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00660.xml", expandGenes=TRUE)
toygraph14
toygraph15 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00562.xml", expandGenes=TRUE)
toygraph15
#Energy metabolism
toygraph16 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00190.xml", expandGenes=TRUE)
toygraph16
toygraph17 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00680.xml", expandGenes=TRUE)
toygraph17
toygraph18 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00910.xml", expandGenes=TRUE)
toygraph18
toygraph19 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00920.xml", expandGenes=TRUE)
toygraph19
#Lipid metabolism
toygraph20 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00061.xml", expandGenes=TRUE)
toygraph20
toygraph21 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00071.xml", expandGenes=TRUE)
toygraph21
toygraph22 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00561.xml", expandGenes=TRUE)
toygraph22
toygraph23 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00564.xml", expandGenes=TRUE)
toygraph23
toygraph24 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00565.xml", expandGenes=TRUE)#Ether Lipid Metabolism P
toygraph24
toygraph25 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00600.xml", expandGenes=TRUE)#Sphingolipid metabolism P
toygraph25
toygraph26 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00590.xml", expandGenes=TRUE)
toygraph26
toygraph27 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00592.xml", expandGenes=TRUE)#alpha-Linolenic acid metabolism Problem
toygraph27
toygraph28 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01040.xml", expandGenes=TRUE)# Biosynthesis of unsaturated fatty acids problem
toygraph28
#Nucleotide metabolism
toygraph29 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00230.xml", expandGenes=TRUE)
toygraph29
toygraph30 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00240.xml", expandGenes=TRUE)
toygraph30
#Amino acid metabolism
toygraph31 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00250.xml", expandGenes=TRUE)
toygraph31
toygraph32 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00260.xml", expandGenes=TRUE)
toygraph32
toygraph33 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00270.xml", expandGenes=TRUE)
toygraph33
toygraph36 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00280.xml", expandGenes=TRUE)
toygraph36
toygraph37 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00290.xml", expandGenes=TRUE)
toygraph37
toygraph38 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00300.xml", expandGenes=TRUE)
toygraph38
toygraph39 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00310.xml", expandGenes=TRUE)
toygraph39
toygraph40 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00220.xml", expandGenes=TRUE)
toygraph40
toygraph41 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00330.xml", expandGenes=TRUE)
toygraph41
toygraph42 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00340.xml", expandGenes=TRUE)
toygraph42
toygraph43 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00350.xml", expandGenes=TRUE)
toygraph43
toygraph44 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00360.xml", expandGenes=TRUE)
toygraph44
toygraph45 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00380.xml", expandGenes=TRUE)
toygraph45
toygraph46 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00400.xml", expandGenes=TRUE)
toygraph46
#Metabolism of other amino acids
toygraph47 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00410.xml", expandGenes=TRUE)
toygraph47
toygraph48 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00430.xml", expandGenes=TRUE)
toygraph48
toygraph49 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00440.xml", expandGenes=TRUE)
toygraph49
toygraph50 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00450.xml", expandGenes=TRUE)
toygraph50
toygraph51 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00460.xml", expandGenes=TRUE)
toygraph51
toygraph52 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00470.xml", expandGenes=TRUE)
toygraph52
toygraph53 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00480.xml", expandGenes=TRUE)
toygraph53
#Glycan biosynthesis and metabolism
toygraph54 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00540.xml", expandGenes=TRUE)
toygraph54
toygraph55 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00541.xml", expandGenes=TRUE)
toygraph55
toygraph56 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00550.xml", expandGenes=TRUE)
toygraph56
toygraph57 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00552.xml", expandGenes=TRUE)#Teichoic acid biosynthesis problem
toygraph57
#Metabolism of cofactors and vitamins
toygraph58 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00730.xml", expandGenes=TRUE)
toygraph58
toygraph59 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00740.xml", expandGenes=TRUE)
toygraph59
toygraph60 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00750.xml", expandGenes=TRUE)
toygraph60
toygraph62 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00760.xml", expandGenes=TRUE)
toygraph62
toygraph63 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00770.xml", expandGenes=TRUE)
toygraph63
toygraph64 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00780.xml", expandGenes=TRUE)
toygraph64
toygraph65 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00785.xml", expandGenes=TRUE)
toygraph65
toygraph66 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00790.xml", expandGenes=TRUE)
toygraph66
toygraph67 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00670.xml", expandGenes=TRUE)
toygraph67
toygraph68 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00860.xml", expandGenes=TRUE)
toygraph68
toygraph69 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00130.xml", expandGenes=TRUE)
toygraph69
#Metabolism of terpenoids and polyketides
toygraph70 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00900.xml", expandGenes=TRUE)
toygraph70
toygraph71 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00903.xml", expandGenes=TRUE)#Limonene and pinene degradation
toygraph71
toygraph72 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00281.xml", expandGenes=TRUE)
toygraph72
toygraph73 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00523.xml", expandGenes=TRUE)
toygraph73
toygraph74 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01053.xml", expandGenes=TRUE)
toygraph74
#Biosynthesis of other secondary metabolites
toygraph75 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00332.xml", expandGenes=TRUE)
toygraph75
toygraph76 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00261.xml", expandGenes=TRUE)
toygraph76
toygraph77 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00521.xml", expandGenes=TRUE)
toygraph77
toygraph78 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00525.xml", expandGenes=TRUE)
toygraph78
toygraph79 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00401.xml", expandGenes=TRUE)#Novobiocin biosynthesis problem
toygraph79
toygraph80 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00405.xml", expandGenes=TRUE)
toygraph80
toygraph81 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00999.xml", expandGenes=TRUE)#Biosynthesis of various plant secondary metabolites problem
toygraph81
toygraph82 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00997.xml", expandGenes=TRUE)
toygraph82
#Xenobiotics biodegradation and metabolism
toygraph83 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00362.xml", expandGenes=TRUE)
toygraph83
toygraph84 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00627.xml", expandGenes=TRUE)
toygraph84
toygraph85 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00364.xml", expandGenes=TRUE)
toygraph85
toygraph86 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00625.xml", expandGenes=TRUE)
toygraph86
toygraph87 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00361.xml", expandGenes=TRUE)
toygraph87
toygraph88 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00623.xml", expandGenes=TRUE)
toygraph88
toygraph89 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00622.xml", expandGenes=TRUE)
toygraph89
toygraph90 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00633.xml", expandGenes=TRUE)
toygraph90
toygraph91 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00643.xml", expandGenes=TRUE)
toygraph91
toygraph92 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00791.xml", expandGenes=TRUE)
toygraph92
toygraph93 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00930.xml", expandGenes=TRUE)
toygraph93
toygraph94 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00626.xml", expandGenes=TRUE)#Naphthalene degradation problem
toygraph94
#Quorum Sensing and Biofilm Formation
toygraph95 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02024.xml", expandGenes=TRUE)
toygraph95
toygraph96 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02025.xml", expandGenes=TRUE)
toygraph96

#Drug resistance: antimicrobial
toygraph97<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01501.xml", expandGenes=TRUE)
toygraph97
toygraph98<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01502.xml", expandGenes=TRUE)#Vancomycin resistance
toygraph98
toygraph99<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01503.xml", expandGenes=TRUE)
toygraph99

#Transcription
toygraph150<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03020.xml", expandGenes=TRUE)#RNA polymerase
toygraph150
#Translation
toygraph151<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03010.xml", expandGenes=TRUE)#Ribosome
toygraph151
toygraph152<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00970.xml", expandGenes=TRUE)
toygraph152
#Folding, sorting and degradation
toygraph153<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03060.xml", expandGenes=TRUE)#Protein export
toygraph153
toygraph154<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae04122.xml", expandGenes=TRUE)
toygraph154
toygraph155<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03018.xml", expandGenes=TRUE)#RNA degradation
toygraph155
#Replication and repair
toygraph156<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03030.xml", expandGenes=TRUE)#DNA replication
toygraph156
toygraph157<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03410.xml", expandGenes=TRUE)#Base excision repair
toygraph157
toygraph158<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03420.xml", expandGenes=TRUE)#Nucleotide excision repair
toygraph158
toygraph159<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03430.xml", expandGenes=TRUE)#Mismatch repair
toygraph159
toygraph160<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03440.xml", expandGenes=TRUE)#Homologous recombination
toygraph160
toygraph161<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03450.xml", expandGenes=TRUE)#Non-homologous end-joining
toygraph161
#Information processing in viruses
toygraph162<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03250.xml", expandGenes=TRUE)#Viral life cycle - HIV-1
toygraph162
##Environmental Information Processing
#Membrane transport

toygraph163<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02010.xml", expandGenes=TRUE)#ABC transporters
toygraph163
toygraph164<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02060.xml", expandGenes=TRUE)#Phosphotransferase system (PTS)
toygraph164
toygraph165<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae03070.xml", expandGenes=TRUE)#Bacterial secretion system
toygraph165
#Signal transduction
toygraph166<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02020.xml", expandGenes=TRUE)
toygraph166
##Cellular Processes
#Cell Motility
toygraph167<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02030.xml", expandGenes=TRUE)#Bacterial chemotaxis
toygraph167
toygraph168<-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02040.xml", expandGenes=TRUE)#Flagellar assembly
toygraph168


toygraph100 <- parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00300.xml", expandGenes=TRUE)
toygraph100

write.table(toygraph100, file='toyGraph100.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)

toygraph10 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae02024.xml", expandGenes=TRUE)
toygraph10
toyGraph8 <- parseKGML2Graph('C:/Users/Kevin/Documents/pae02024.xml', expandGenes=TRUE)
plotKEGGgraph(toyGraph8)
toyGraph7 <- parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01230.xml", expandGenes=TRUE)
toyGraph6 <- parseKGML2Graph("C:/Users/Kevin/Documents/pae00300.xml", expandGenes=TRUE)
toyGraph8 <- parseKGML2Graph('C:/Users/Kevin/Documents/pae00310.xml', expandGenes=TRUE)
toyGraph9 <- parseKGML2DataFrame("C:/Users/Kevin/Documents/pae00300.xml", expandGenes=TRUE)
toygraph10 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pae01100.xml", expandGenes=TRUE)
toyGraph7
toygraph10

write.table(toyGraph9, file='toyGraph9.tsv', append = FALSE, sep = "\t",
            row.names = TRUE, col.names = TRUE)



toygraph101 <- rbind(toygraph1,toygraph10,toygraph11,toygraph12,toygraph13,toygraph14,toygraph15,toygraph16,toygraph17,toygraph18,toygraph19,toygraph2,toygraph20,toygraph21,toygraph22,toygraph23,toygraph26,toygraph29,toygraph3,toygraph30,toygraph31,toygraph32,toygraph33,toygraph36,toygraph37,toygraph38,toygraph39,toygraph4,toygraph40,toygraph41,toygraph42,toygraph43,toygraph44,toygraph45,toygraph46,toygraph47,toygraph48,toygraph49,toygraph5,toygraph50,toygraph51,toygraph52,toygraph53,toygraph54,toygraph55,toygraph56,toygraph58,toygraph59,toygraph6,toygraph60,toygraph62,toygraph63,toygraph64,toygraph65,toygraph66,toygraph67,toygraph68,toygraph69,toygraph70,toygraph72,toygraph73,toygraph74,toygraph75,toygraph76,toygraph77,toygraph78,toygraph8,toygraph80,toygraph82,toygraph83,toygraph84,toygraph85,toygraph86,toygraph87,toygraph88,toygraph89,toygraph9,toygraph90,toygraph91,toygraph92,toygraph93,toygraph95,toygraph96)

toygraph101
write.table(toygraph101, file='toyGraph101.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)



toygraph200<-rbind(toygraph31,toygraph32,toygraph33,toygraph36,toygraph37,toygraph38,toygraph39,toygraph40,toygraph41,toygraph42,toygraph43,toygraph44,toygraph45,toygraph46)





write.table(toygraph200, file='toyGraph_Amino_Acid_Pathways.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)




toygraph201 <- rbind(toygraph16,toygraph17,toygraph18,toygraph19)
write.table(toygraph201, file='toyGraph_Energy_Metabolisms.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)

toygraph202 <- rbind(toygraph20,toygraph21,toygraph22,toygraph23,toygraph26)
write.table(toygraph202, file='toyGraph_Lipid_Metabolisms.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)

toygraph203 <- rbind(toygraph29,toygraph30)
write.table(toygraph203, file='toyGraph_Nucletide_Metabolisms.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)

toygraph204 <- rbind(toygraph54,toygraph55,toygraph56)
write.table(toygraph204, file='toyGraph_Glycan_biosynth_Metabolism.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)
Metabolism_cofactors_vitamins <- rbind(toygraph58,toygraph59,toygraph60,toygraph62,toygraph63,toygraph64,toygraph65,toygraph66,toygraph67,toygraph68,toygraph69)

write.table(Metabolism_cofactors_vitamins,file = 'Metabolism_cofactors_vitamins.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)


Metabolism_terpenoids_polyketides <- rbind(toygraph70,toygraph72,toygraph73,toygraph74)
write.table(Metabolism_terpenoids_polyketides,file = 'Metabolism_terpenoids_polyketides.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)


Biosynthesis_other_secondary_metabolites <- rbind(toygraph75,toygraph76,toygraph77,toygraph78,toygraph80,toygraph82)
write.table(Biosynthesis_other_secondary_metabolites,file = 'Biosynthesis_other_secondary_metabolites.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)


Xenobiotics_biodegradation_metabolism <- rbind(toygraph83,toygraph84,toygraph85,toygraph86,toygraph87,toygraph88,toygraph89,toygraph90,toygraph91,toygraph92,toygraph93)
write.table(Xenobiotics_biodegradation_metabolism,file = 'Xenobiotics_biodegradation_metabolism.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)

Quorum_sensing_Biofilm<-rbind(toygraph95,toygraph96)
write.table(Quorum_sensing_Biofilm,file = 'Quorum_sensing_Biofilm.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)

Drug_resistance<-rbind(toygraph97,toygraph99)
write.table(Drug_resistance,file = 'Drug_resistance.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)

Genetic_information_processing<-rbind(toygraph152,toygraph154)
write.table(Genetic_information_processing,file = 'Genetic_information_processing.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)
Environmental_information_processing<-rbind(toygraph164,toygraph166)
write.table(Environmental_information_processing,file = 'Environmental_information_processing.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)

write.table(toygraph167,file = 'Bacterial_Chemotaxis.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)

write.table(toygraph39, file='toyGraph_Lysine_degradation.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)
write.table(toygraph31, file='toyGraph_aagm.csv', append = FALSE, sep = ",",
                        row.names = FALSE, col.names = TRUE)

toygraph_LD_LB <- rbind(toygraph38,toygraph39)
toygraph_Carbohydrate_metabolism <- rbind(toygraph1,toygraph10,toygraph11,toygraph12,toygraph13,toygraph14,toygraph15,toygraph2,toygraph3,toygraph4,toygraph5,toygraph6,toygraph7,toygraph8,toygraph9)




pau00250 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00250.xml", expandGenes=TRUE)
pau00260 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00260.xml", expandGenes=TRUE)
pau00270 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00270.xml", expandGenes=TRUE)
pau00280 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00280.xml", expandGenes=TRUE)
pau00290 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00290.xml", expandGenes=TRUE)
pau00300 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00300.xml", expandGenes=TRUE)
pau00310 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00310.xml", expandGenes=TRUE)
pau00220 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00220.xml", expandGenes=TRUE)
pau00330 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00330.xml", expandGenes=TRUE)
pau00340 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00340.xml", expandGenes=TRUE)
pau00350 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00350.xml", expandGenes=TRUE)
pau00360 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00360.xml", expandGenes=TRUE)
pau00380 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00380.xml", expandGenes=TRUE)
pau00400 <-parseKGML2DataFrame("C:/Users/Kevin/Documents/pau00400.xml", expandGenes=TRUE)

pau_aminoacids <- rbind(pau00250,pau00260,pau00270,pau00280,pau00290,pau00300,pau00310,pau00220,pau00330,pau00340,pau00350,pau00360,pau00380,pau00400)
pau_aminoacids

write.table(pau_aminoacids,file='biosynthesis_of_amino_acids_PA14.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)
write.table(toygraph_Carbohydrate_metabolism,file='toyGraph_Carbohydrate_Metabolism.csv', append = FALSE, sep = ",",row.names = FALSE, col.names = TRUE)


write.table(toygraph_LD_LB,file='toyGraph_Lysine_combined.csv', append = FALSE, sep = ",",
             row.names = FALSE, col.names = TRUE)
write.table(toygraph32,file='toyGraph_GST.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#Glycine,serine and threonine

write.table(toygraph33,file='toyGraph_CMM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#Glycine,serine and threonine
write.table(toygraph36,file='toyGraph_VLID.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph37,file='toyGraph_VLIB.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#

write.table(toygraph40,file='toyGraph_AB.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph41,file='toyGraph_APM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph42,file='toyGraph_HM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph43,file='toyGraph_TM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph44,file='toyGraph_PM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph45,file='toyGraph_TrpM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph46,file='toyGraph_PaTTrpB.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph47,file='toyGraph_bAM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph48,file='toyGraph_ThTM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph49,file='toyGraph_PPM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph50,file='toyGraph_ScM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph51,file='toyGraph_CaM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph52,file='toyGraph_DAM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#
write.table(toygraph53,file='toyGraph_GlutathioneM.csv', append = FALSE, sep = ",",
            row.names = FALSE, col.names = TRUE)#


toyGraph7
toyGraph6
toyGraph8

??KEGGgraph


plotKEGGgraph(toyGraph8)

plotKEGGgraph(toyGraph7)
#toyGraph7 <- parseKGML2Graph("C:/Users/Kevin/Documents/pae00300.xml", expandGenes=FALSE)
#toyGraph7
plotKEGGgraph(toyGraph6)
#toyGraph6
doc <- xmlParse("C:/Users/Kevin/Documents/pae00300.xml",useInternalNodes = TRUE)
doc
doc1 <- xml_to_df(doc)
doc1

doc2 <- xmlToDataFrame(doc)
doc2
V <-nodes(toyGraph6)
V
M<-edges(toyGraph6)
M

gephi_write_edges(toyGraph6,"pae00300.csv")
edgesGraph <- edges(toyGraph6)

edgesGraph


doc3 <- xmlToList(doc)
doc3
data <- ldply(doc3,data.frame)
head (data)
nodes(toyGraph6)
edges(toyGraph6)

#toyGraph <- data.frame(edges(toyGraph6))
help("igraph")
??igraph

write_graph(toyGraph6, 'toygraph6.txt',edgelist)
write.table(toyGraph6, file='toyGraph6.tsv', append = FALSE, sep = "\t",
            row.names = TRUE, col.names = TRUE)
#write_tsv(toyGraph6, file =  "pae00300.txt")
