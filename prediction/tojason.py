import pandas as pd
import psycopg2

# Connect to PostgreSQL
conn = psycopg2.connect(
    dbname="Used_car_project",
    user="postgres",
    password="karan",
    host="localhost",     # or your host
    port="5432"           # default PostgreSQL port
)

# SQL query with age filter
query = """
SELECT brand, model, age, driven AS distance, gear, fueltype AS fuel, askPrice
FROM usedcar
WHERE age <= 8
"""

# Load query result into DataFrame
df = pd.read_sql_query(query, conn)

# Convert to JSON
df.to_json('filtered_data.json', orient='records', indent=4)

# Close connection
conn.close()
