import mysql.connector
from datetime import datetime

# Step 1: Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",             # Use your username
    password="Saumya@12345", # Replace with your password
    database="hospitaldb"    # Your database name
)

cursor = conn.cursor()

# Step 2: Query - Appointments in the next 7 days
print("Appointments in the next 7 days:\n")
cursor.execute("""
    SELECT 
        p.patient_name,
        d.doctor_name,
        a.date
    FROM appointments a
    JOIN patients p ON a.patient_id = p.id
    JOIN doctors d ON a.doctor_id = d.id
    WHERE a.date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
""")
for row in cursor.fetchall():
    print(f"Patient: {row[0]}, Doctor: {row[1]}, Date: {row[2]}")

# Step 3: Query - Number of patients per doctor
print("\nNumber of patients per doctor:\n")
cursor.execute("""
    SELECT 
        d.doctor_name,
        COUNT(a.patient_id) AS total_patients
    FROM doctors d
    LEFT JOIN appointments a ON d.id = a.doctor_id
    GROUP BY d.id;
""")
for row in cursor.fetchall():
    print(f"Doctor: {row[0]} – Patients: {row[1]}")

# Step 4: Close connection
cursor.close()
conn.close()
