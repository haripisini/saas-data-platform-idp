import psycopg2

# PostgreSQL connection
conn = psycopg2.connect(
    host="localhost",
    database="vector_db",
    user="postgres",
    password="password"
)

cursor = conn.cursor()

# Example query embedding
query_vector = "[0.12, 0.34, 0.56]"

search_query = """
SELECT document_text
FROM document_embeddings
ORDER BY embedding <-> %s
LIMIT 5;
"""

cursor.execute(search_query,(query_vector,))
results = cursor.fetchall()

for row in results:
    print(row)