USE startersql;

-- Retrieve all columns for all users
SELECT * FROM users;

-- Retrieve only the names of all users
SELECT name FROM users;

-- Retrieve users where gender is Female
SELECT * FROM users WHERE gender = 'Female';

-- Retrieve users with ID less than or equal to 10
SELECT * FROM users WHERE id <= 10;

-- Retrieve male users earning more than 70,000
SELECT * FROM users WHERE gender = 'Male' AND salary > 70000;

-- Retrieve male users or those earning more than 65,000, ordered by date of birth descending (newest first), limit to 5
SELECT * FROM users 
WHERE gender = 'Male' OR salary > 65000 
ORDER BY date_of_birth DESC 
LIMIT 5;
