-- ============================================================================
-- MODULE 08: SET OPERATIONS
-- Script 01: UNION vs UNION ALL
-- Purpose: Vertically combine result sets from multiple SELECT queries.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- QUICK RECALL:
-- - UNION:     Combines results and REMOVES duplicate rows (automatic deduplication).
-- - UNION ALL: Combines results and KEEPS all duplicate rows (faster execution).
--
-- GOLDEN RULES:
-- 1. Each SELECT statement must have the SAME number of columns.
-- 2. The columns must have compatible data types in the same order.
-- ----------------------------------------------------------------------------

-- 1. Preview source tables
SELECT name, email FROM users LIMIT 3;
SELECT name, email FROM admin_user LIMIT 3;

-- 2. UNION: Combine users and admins, eliminating duplicates
SELECT name, email, 'User' AS account_type 
FROM users
UNION
SELECT name, email, 'Admin' AS account_type 
FROM admin_user;

-- 3. UNION ALL: Combine all rows including any duplicates
SELECT name, email 
FROM users
UNION ALL
SELECT name, email 
FROM admin_user;

-- 4. Filtering and Sorting combined UNION results
-- Note: ORDER BY applies to the entire unified result set at the bottom
SELECT name, email, salary 
FROM users 
WHERE salary > 60000
UNION
SELECT name, email, salary 
FROM admin_user 
WHERE salary > 35000
ORDER BY salary DESC;
