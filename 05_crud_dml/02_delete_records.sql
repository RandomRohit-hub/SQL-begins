-- ============================================================================
-- MODULE 05: DATA MANIPULATION LANGUAGE (DML) - CRUD
-- Script 02: Delete Records & Cascading Effects
-- Purpose: Safely delete records, observe foreign key CASCADE, understand TRUNCATE vs DROP.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- CRITICAL SAFETY RULE:
-- Always include a WHERE clause when executing DELETE.
-- Executing `DELETE FROM users;` without WHERE deletes all records in the table!
-- ----------------------------------------------------------------------------

-- 1. Conditional deletion matching a rule
DELETE FROM users 
WHERE gender = 'Other';

-- 2. Observe Cascading Delete on the address table
-- Step A: Check address linked to user_id = 10
SELECT * FROM address WHERE user_id = 10;

-- Step B: Delete parent user with id = 10
DELETE FROM users WHERE id = 10;

-- Step C: Confirm corresponding address was automatically removed due to ON DELETE CASCADE
SELECT * FROM address WHERE user_id = 10;

-- ----------------------------------------------------------------------------
-- QUICK RECALL: DELETE vs TRUNCATE vs DROP
-- ----------------------------------------------------------------------------
-- DELETE FROM users WHERE id = 1; -> Deletes selected rows; logged; can rollback in transaction.
-- TRUNCATE TABLE address;         -> Empties entire table and resets AUTO_INCREMENT counter to 1.
-- DROP TABLE address;             -> Completely wipes table structure, constraints, and all data.
