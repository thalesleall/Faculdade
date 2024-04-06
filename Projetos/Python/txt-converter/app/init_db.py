import os
import psycopg2 as psycopg2

conn = psycopg2.connect(
        host="localhost",
        database="flask_db",
        user=os.environ['DB_USERNAME'],
        password=os.environ['DB_PASSWORD'])

# Open a cursor to perform database operations
cur = conn.cursor()

# Execute a command: this creates a new table
cur.execute('DROP TABLE IF EXISTS books CASCADE;')

cur.execute(' CREATE TABLE usuarios (id SERIAL PRIMARY KEY, username VARCHAR(50) NOT NULL, password VARCHAR(50) NOT NULL);')

conn.commit()
cur.close()
conn.close()