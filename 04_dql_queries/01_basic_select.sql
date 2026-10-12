-- ============================================================================
-- MODULE 04: DATA QUERY LANGUAGE (DQL)
-- Script 01: Basic SELECT Queries
-- Purpose: Query table columns, apply aliases, and fetch complete projections.
-- ============================================================================

USE startersql;

-- 1. Fetch all columns and all rows from users
SELECT * FROM users;

-- 2. Fetch specific columns only (Column Projection)
SELECT id, name, email FROM users;

-- 3. Use Column Aliases with 'AS' for clearer output headers
SELECT 
    name AS user_name, 
    salary AS monthly_salary, 
    (salary * 12) AS annual_compensation
FROM users;

-- 4. Query distinct values (remove duplicate values from output)
SELECT DISTINCT gender FROM users;

-- 5. Fetch first 5 records only (simple row limiting)
SELECT * FROM users LIMIT 5;
