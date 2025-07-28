# Hospital-database
A simple hospital management system using MySQL and Python. It manages patients, doctors, and appointments, and runs queries to fetch upcoming appointments and count patients per doctor. Ideal for practicing SQL queries and database interaction with Python.

Hospital Management System (SQL + Python)

This is a basic Hospital Management System project that connects a MySQL database to a Python application using the `mysql-connector-python` library.

The project demonstrates how to:

- Set up and query a relational database in MySQL Workbench.
- Connect Python to MySQL.
- Perform real-time queries like appointments in the next 7 days and patient count per doctor.

## 🛠 Tech Stack

- **Frontend**: (Optional – not used here)
- **Backend**: Python 3.13+
- **Database**: MySQL Workbench
- **Connector**: `mysql-connector-python`

## Project Structure

sql-project-hospital-management/
│
├── database.sql # SQL script to create and populate the database
├── main.py # Python script to query the database
├── README.txt # Project documentation

## ⚙️ Setup Instructions

1.  Install Requirements
    Make sure MySQL and Python are installed. Then install the required Python package:
    pip install mysql-connector-python

2.  Set Up MySQL Database
3.  Open MySQL Workbench.
4.  Run the SQL file `database.sql` to create the `hospitaldb` database and tables.
5.  Make sure your MySQL server is running.

6.  Edit Credentials in Python
    Open `main.py` and update the following lines:
    conn = mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="your_password",
    database="hospitaldb"
    )

## Running the App

Run the Python script using:
python main.py

You should see two results:

- List of patients who have appointments in the next 7 days.
- Number of patients assigned to each doctor.

## Sample Output

Appointments in the next 7 days:
('John Doe', 'Dr. Smith', datetime.date(2025, 7, 30))
('Alice Johnson', 'Dr. Lee', datetime.date(2025, 7, 31))

Number of patients per doctor:
('Dr. Smith', 2)
('Dr. Lee', 1)

## Features Included

- Connects to MySQL using Python
- Joins between Patients, Doctors, and Appointments tables
- Aggregates (COUNT) patient data by doctor
- Filters appointments within the next 7 days using `CURDATE()` and `DATE_ADD()`

##  Future Enhancements

- Add frontend with HTML/CSS
- Admin login for managing doctors and patients
- Insert/update/delete functionality
- Integration with Flask or Django

##  Author

Made by Rohith
