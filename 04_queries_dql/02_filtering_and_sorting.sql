-- ============================================================================
-- MODULE 04: DATA QUERY LANGUAGE (DQL)
-- Script 02: Filtering, Logical Operators & Sorting
-- Purpose: Filter rows with WHERE, combine conditions (AND/OR), sort, and paginate.
-- ============================================================================

USE startersql;

-- 1. Exact condition filtering using WHERE
SELECT name, gender, salary 
FROM users 
WHERE gender = 'Female';

-- 2. Comparison operators (<, >, <=, >=, !=)
SELECT name, salary 
FROM users 
WHERE salary >= 60000;

-- 3. Logical AND (both conditions must be true)
SELECT name, gender, salary 
FROM users 
WHERE gender = 'Male' AND salary > 70000;

-- 4. Logical OR (at least one condition must be true)
SELECT name, gender, date_of_birth 
FROM users 
WHERE gender = 'Male' OR date_of_birth > '2000-09-09';

-- 5. Range filtering using BETWEEN ... AND ...
SELECT name, salary 
FROM users 
WHERE salary BETWEEN 40000 AND 60000;

-- 6. Set membership check using IN (...)
SELECT name, date_of_birth 
FROM users 
WHERE id IN (1, 3, 5, 7, 9);

-- 7. Pattern matching using LIKE (wildcard %)
SELECT name, email 
FROM users 
WHERE email LIKE '%@example.com';

-- 8. Sorting records with ORDER BY (ASC / DESC)
SELECT name, date_of_birth, salary 
FROM users 
ORDER BY salary DESC;

-- 9. Combined filter, sorting, and row limit
SELECT id, name, gender, date_of_birth, salary 
FROM users 
WHERE gender = 'Male' OR date_of_birth > '2000-09-09' 
ORDER BY date_of_birth DESC 
LIMIT 5;

-- 10. Pagination using LIMIT and OFFSET (Page 2: fetch 5 records skipping first 5)
SELECT id, name, salary 
FROM users 
ORDER BY id ASC 
LIMIT 5 OFFSET 5;
