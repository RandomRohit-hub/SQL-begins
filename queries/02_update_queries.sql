USE startersql;

-- Update user's salary and email by their ID
UPDATE users SET salary = 45000, email = 'arav@arav.com' WHERE id = 1;

-- Retrieve all users to verify the update
SELECT * FROM users;

-- Increase salary by 10,000 for users earning less than 60,000
UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

-- Retrieve all users to verify the bulk update
SELECT * FROM users;
