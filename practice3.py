import pandas as pd
df=pd.read_excel('seiseki.xlsx',index_col='氏名')
name=input("氏名を入力してください")
df.loc[name,:]