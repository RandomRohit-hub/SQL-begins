-- ============================================================================
-- MODULE 06: BUILT-IN FUNCTIONS
-- Script 02: Scalar & String Functions
-- Purpose: Transform individual column values (LOWER, UPPER, CONCAT, LENGTH, DATE).
-- ============================================================================

USE startersql;

-- 1. String case conversion (LOWER, UPPER)
SELECT 
    name,
    LOWER(name) AS lower_name,
    UPPER(name) AS upper_name
FROM users 
LIMIT 5;

-- 2. String Concatenation: Combine fields or literals (CONCAT)
-- Generate a simulated username by combining lowercase name and suffix
SELECT 
    id,
    name,
    CONCAT(LOWER(REPLACE(name, ' ', '_')), '_dev') AS generated_username,
    CONCAT('INR ', salary) AS formatted_salary
FROM users 
LIMIT 5;

-- 3. String Length (LENGTH / CHAR_LENGTH)
SELECT 
    name,
    LENGTH(name) AS character_length
FROM users
ORDER BY LENGTH(name) DESC
LIMIT 5;

-- 4. Substrings: Extract a portion of text (SUBSTRING(string, start_pos, length))
SELECT 
    email,
    SUBSTRING(email, 1, 5) AS email_prefix
FROM users
LIMIT 5;

-- 5. Date functions: Extract date parts and calculate age
SELECT 
    name,
    date_of_birth,
    YEAR(date_of_birth) AS birth_year,
    TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS calculated_age
FROM users
LIMIT 5;
