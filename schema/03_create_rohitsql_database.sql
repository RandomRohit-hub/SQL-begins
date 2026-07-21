-- Initial script creating Rohitsql database and usersDB table
CREATE DATABASE IF NOT EXISTS Rohitsql;
USE Rohitsql;

CREATE TABLE IF NOT EXISTS usersDB (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Select all records from usersDB (initially empty)
SELECT * FROM usersDB;
