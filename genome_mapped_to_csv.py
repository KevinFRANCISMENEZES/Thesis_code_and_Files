import pandas as pd
dataset = pd.read_excel(r"C:/Users/Kevin/Downloads/PAO1_mapped.xlsx")
dataset.to_csv("Full_genome_mapped.csv",index=False)