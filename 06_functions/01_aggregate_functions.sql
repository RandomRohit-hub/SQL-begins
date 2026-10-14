-- ============================================================================
-- MODULE 06: BUILT-IN FUNCTIONS
-- Script 01: Aggregate Functions & Grouping
-- Purpose: Perform calculations across row sets (COUNT, SUM, AVG, MIN, MAX).
-- ============================================================================

USE startersql;

-- 1. COUNT(): Count total rows or conditioned subsets
SELECT COUNT(*) AS total_users FROM users;

SELECT COUNT(*) AS total_males 
FROM users 
WHERE gender = 'Male';

SELECT COUNT(*) AS total_females 
FROM users 
WHERE gender = 'Female';

-- 2. MIN() and MAX(): Find minimum and maximum values
SELECT 
    MIN(salary) AS min_salary, 
    MAX(salary) AS max_salary 
FROM users;

-- 3. SUM() and AVG(): Calculate total sum and rounded average
SELECT 
    SUM(salary) AS total_payroll,
    ROUND(AVG(salary), 2) AS average_salary 
FROM users;

-- 4. All-in-one Executive Summary
SELECT 
    COUNT(*) AS total_employees,
    MIN(salary) AS minimum_pay,
    MAX(salary) AS maximum_pay,
    ROUND(AVG(salary), 2) AS average_pay,
    SUM(salary) AS total_budget
FROM users;

-- 5. GROUP BY: Aggregate metrics segmented by category (e.g. per gender)
SELECT 
    gender,
    COUNT(*) AS user_count,
    ROUND(AVG(salary), 2) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM users
GROUP BY gender;

-- 6. HAVING: Filter aggregated groups after GROUP BY calculation
SELECT 
    gender,
    COUNT(*) AS user_count,
    ROUND(AVG(salary), 2) AS avg_salary
FROM users
GROUP BY gender
HAVING COUNT(*) > 5;
