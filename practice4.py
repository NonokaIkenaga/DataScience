import pandas as pd
df=pd.read_excel('seiseki.xlsx', index_col="学籍番号")

df_score = df.loc[1001:1004, "材力":"流力"]
print(df_score)

df_mean=df.mean(numeric_only = True)
df_std=df.std(numeric_only = True)
df_dev=(df_score - df_mean)/df_std*10.0+50.0

print(df_dev)