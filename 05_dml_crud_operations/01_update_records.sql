-- ============================================================================
-- MODULE 05: DATA MANIPULATION LANGUAGE (DML) - CRUD OPERATIONS
-- Script 01: Update Records
-- Purpose: Modify existing records (single record update, math expressions, bulk).
-- ============================================================================

USE startersql;

-- 1. Preview records before modification
SELECT id, name, salary FROM users WHERE id = 1;

-- 2. Update a single record targeting by Primary Key
UPDATE users 
SET salary = 52000.00 
WHERE id = 1;

-- 3. Update multiple columns simultaneously
UPDATE users 
SET salary = 55000.00, is_active = TRUE 
WHERE id = 2;

-- 4. Bulk conditional update using mathematical expression
-- Give a 10,000 raise to all users earning under 40,000
UPDATE users 
SET salary = salary + 10000.00 
WHERE salary < 40000.00;

-- 5. Verify the updated records
SELECT id, name, salary, is_active 
FROM users 
WHERE id IN (1, 2) OR salary <= 50000.00;
