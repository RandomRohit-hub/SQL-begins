-- ============================================================================
-- MODULE 04: DATA QUERY LANGUAGE (DQL)
-- Script 02: Filtering, Logical Operators & Sorting
-- Purpose: Filter rows with WHERE, combine conditions (AND/OR), sort & paginate.
-- ============================================================================

USE startersql;

-- 1. Exact match filter (WHERE)
SELECT name, gender, salary FROM users WHERE gender = 'Female';

-- 2. Comparison operators (<, >, <=, >=, !=)
SELECT name, salary FROM users WHERE salary >= 60000.00;

-- 3. Combining conditions with AND
SELECT name, gender, salary 
FROM users 
WHERE gender = 'Male' AND salary > 70000;

-- 4. Combining conditions with OR
SELECT name, gender, date_of_birth 
FROM users 
WHERE gender = 'Male' OR date_of_birth > '2003-01-01';

-- 5. Range checking using BETWEEN ... AND ...
SELECT name, salary 
FROM users 
WHERE salary BETWEEN 40000 AND 60000;

-- 6. Set membership using IN (...)
SELECT name, date_of_birth 
FROM users 
WHERE id IN (1, 5, 10, 15, 20);

-- 7. Pattern matching using LIKE (wildcard %)
SELECT name, email 
FROM users 
WHERE email LIKE '%.com';

-- 8. Sorting results (ORDER BY ascending/descending)
SELECT name, salary 
FROM users 
ORDER BY salary DESC;

-- 9. Combined filtering, multi-column sorting, and LIMIT
SELECT id, name, gender, date_of_birth, salary 
FROM users 
WHERE gender = 'Male' OR date_of_birth > '2000-09-09'
ORDER BY date_of_birth DESC, salary ASC
LIMIT 5;

-- 10. Pagination using LIMIT with OFFSET (Page 2: 5 items, skip first 5)
SELECT id, name, salary 
FROM users 
ORDER BY id ASC 
LIMIT 5 OFFSET 5;
