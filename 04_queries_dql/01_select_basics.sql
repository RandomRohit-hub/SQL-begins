-- ============================================================================
-- MODULE 04: DATA QUERY LANGUAGE (DQL)
-- Script 01: Basic SELECT Queries
-- Purpose: Retrieve rows, project specific columns, alias names, and deduplicate.
-- ============================================================================

USE startersql;

-- 1. Fetch all rows and columns
SELECT * FROM users;

-- 2. Select specific columns only (Column Projection)
SELECT name, gender, salary FROM users;

-- 3. Column Aliasing (AS) for custom header formatting
SELECT 
    name AS full_name, 
    salary AS monthly_salary,
    (salary * 12) AS annual_package
FROM users;

-- 4. Distinct values: eliminate duplicate occurrences from output
SELECT DISTINCT gender FROM users;

-- 5. Simple row limit
SELECT * FROM users LIMIT 5;
