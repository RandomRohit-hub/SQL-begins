USE startersql;

-- Add UNIQUE constraint to email if not already present (failsafe)
ALTER TABLE users ADD CONSTRAINT UNIQUE (email);

-- Insert sample user data
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES ('osama', 'osama@123.com', 'Male', '1995-05-13', 65000.0);

-- Query users to verify insertion
SELECT * FROM users;
