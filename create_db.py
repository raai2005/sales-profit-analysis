import pandas as pd
import sqlite3
import os

#step1: load cleaned csv data
csv_path = os.path.join('data', 'CleanedSalesData.csv')
df = pd.read_csv(csv_path)

#step2: create sql db connection
db_path = os.path.join('database', 'SalesData.db')
conn = sqlite3.connect(db_path)

#step3: write df into sql table
df.to_sql('Sales', conn, index=False, if_exists='replace')

#step4: close the connection
conn.close()

print("SalesData.db is created successfully in database folder!")