-- ============================================================================
-- MODULE 05: DATA MANIPULATION LANGUAGE (DML) - CRUD OPERATIONS
-- Script 02: Delete Records & Cascade Effects
-- Purpose: Safely delete records, understand CASCADE deletion, and TRUNCATE vs DROP.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- CRITICAL SAFETY RULE:
-- Always use a WHERE clause with DELETE. Without WHERE, all rows will be wiped!
-- ----------------------------------------------------------------------------

-- 1. Targeted deletion by conditional match
-- Delete users categorized with gender 'Other' if any exist
DELETE FROM users 
WHERE gender = 'Other';

-- 2. Delete a single user and observe Cascading Delete on addresses
-- Before deletion: Check user 25 and their address
SELECT * FROM users WHERE id = 25;
SELECT * FROM addresses WHERE user_id = 25;

-- Delete parent user record
DELETE FROM users WHERE id = 25;

-- After deletion: Address for user_id = 25 was automatically deleted due to ON DELETE CASCADE!
SELECT * FROM addresses WHERE user_id = 25;

-- ----------------------------------------------------------------------------
-- QUICK RECALL: DELETE vs TRUNCATE vs DROP
-- ----------------------------------------------------------------------------
-- DELETE FROM users WHERE id = 1; -> Removes specific rows, can rollback in transaction.
-- TRUNCATE TABLE addresses;        -> Resets entire table, resets AUTO_INCREMENT to 1, faster than DELETE.
-- DROP TABLE addresses;            -> Completely deletes table structure, indexes, and all data.
