import pandas as pd

# Load the data
df = pd.read_excel(r'E:\\Data_analysis_projects\\Friday Purchases\\dataset\\Friday Purchases.xlsx')

df['week_num'] = df['date'].dt.isocalendar().week

df1 = df[(df['date'].dt.month <= 3) & (df['day_name'] == 'Friday')]

df2 = df1.groupby('week_num')['amount_spent'].mean().reset_index()

print(df2.sort_values(by='amount_spent',ascending=False))
