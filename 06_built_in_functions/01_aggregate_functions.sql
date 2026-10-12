-- ============================================================================
-- MODULE 06: BUILT-IN FUNCTIONS
-- Script 01: Aggregate Functions & Grouping
-- Purpose: Perform calculations across multiple rows (COUNT, SUM, AVG, MIN, MAX).
-- ============================================================================

USE startersql;

-- 1. COUNT(): Count total rows or conditioned rows
SELECT COUNT(*) AS total_users FROM users;

SELECT COUNT(*) AS total_males 
FROM users 
WHERE gender = 'Male';

SELECT COUNT(*) AS total_females 
FROM users 
WHERE gender = 'Female';

-- 2. MIN() and MAX(): Find smallest and highest values
SELECT 
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM users;

-- 3. SUM() and AVG(): Calculate total sum and mathematical average
SELECT 
    SUM(salary) AS total_payroll,
    ROUND(AVG(salary), 2) AS average_salary
FROM users;

-- 4. Combining all aggregates in a single executive summary
SELECT 
    COUNT(*) AS employee_count,
    MIN(salary) AS min_pay,
    MAX(salary) AS max_pay,
    ROUND(AVG(salary), 2) AS avg_pay,
    SUM(salary) AS total_budget
FROM users;

-- 5. GROUP BY: Aggregate metrics per category (e.g. per gender)
SELECT 
    gender,
    COUNT(*) AS user_count,
    ROUND(AVG(salary), 2) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM users
GROUP BY gender;

-- 6. HAVING: Filter aggregated groups (e.g. groups with more than 5 users)
SELECT 
    gender,
    COUNT(*) AS total_users,
    ROUND(AVG(salary), 2) AS avg_salary
FROM users
GROUP BY gender
HAVING COUNT(*) > 5;
