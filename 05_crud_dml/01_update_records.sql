-- ============================================================================
-- MODULE 05: DATA MANIPULATION LANGUAGE (DML) - CRUD
-- Script 01: Update Records
-- Purpose: Safely update existing records by primary key, column sets, and bulk rules.
-- ============================================================================

USE startersql;

-- 1. Preview target record before modification
SELECT id, name, salary FROM users WHERE id = 1;

-- 2. Update a single record targeting specific Primary Key
UPDATE users 
SET salary = 50000.00 
WHERE id = 1;

-- 3. Update multiple columns at the same time
UPDATE users 
SET salary = 58000.00, is_active = TRUE 
WHERE id = 2;

-- 4. Bulk conditional update using mathematical expression
-- Example: Raise salary by 10,000 for users currently earning less than 60,000
UPDATE users 
SET salary = salary + 10000.00 
WHERE salary < 60000.00;

-- 5. Verify the updated records
SELECT id, name, salary, is_active 
FROM users 
WHERE salary <= 65000.00;
