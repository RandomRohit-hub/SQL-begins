-- ============================================================================
-- MODULE 06: BUILT-IN FUNCTIONS
-- Script 02: String & Scalar Functions
-- Purpose: Transform column values (LOWER, UPPER, CONCAT, LENGTH, SUBSTRING, DATES).
-- ============================================================================

USE startersql;

-- 1. String Case Conversion: LOWER() and UPPER()
SELECT 
    name,
    LOWER(name) AS lower_name,
    UPPER(name) AS upper_name
FROM users 
LIMIT 5;

-- 2. String Concatenation: CONCAT()
-- Build custom usernames or formatted strings
SELECT 
    id,
    name,
    CONCAT(LOWER(REPLACE(name, ' ', '_')), '_dev') AS generated_username,
    CONCAT('INR ', salary) AS formatted_salary
FROM users 
LIMIT 5;

-- 3. String Length: LENGTH()
SELECT 
    name,
    LENGTH(name) AS char_length
FROM users
ORDER BY LENGTH(name) DESC
LIMIT 5;

-- 4. Substring Extraction: SUBSTRING(text, start, length)
SELECT 
    email,
    SUBSTRING(email, 1, 5) AS email_prefix
FROM users
LIMIT 5;

-- 5. Date & Time Functions: YEAR() and TIMESTAMPDIFF()
SELECT 
    name,
    date_of_birth,
    YEAR(date_of_birth) AS birth_year,
    TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS calculated_age
FROM users
LIMIT 5;
