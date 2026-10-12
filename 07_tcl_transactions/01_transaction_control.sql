-- ============================================================================
-- MODULE 07: TRANSACTION CONTROL LANGUAGE (TCL)
-- Script 01: Transactions, Commit & Rollback
-- Purpose: Safely execute DML statements with rollback ability (ACID compliance).
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- CONCEPT:
-- By default, MySQL runs in autocommit mode (every statement commits immediately).
-- To group statements into an atomic transaction, disable autocommit or use 
-- START TRANSACTION.
-- ----------------------------------------------------------------------------

-- ============================================================================
-- SCENARIO A: Safe Testing with ROLLBACK (Reverting Changes)
-- ============================================================================

-- Step 1: Check baseline record
SELECT id, name, salary FROM users WHERE id = 1;

-- Step 2: Disable autocommit
SET autocommit = 0;

-- Step 3: Perform an experimental change
UPDATE users SET salary = 999999.00 WHERE id = 1;

-- Step 4: Verify the temporary change (visible only within your session)
SELECT id, name, salary FROM users WHERE id = 1;

-- Step 5: Undo / discard the change!
ROLLBACK;

-- Step 6: Verify the table reverted back to original value
SELECT id, name, salary FROM users WHERE id = 1;

-- ============================================================================
-- SCENARIO B: Permanent Confirmation with COMMIT
-- ============================================================================

START TRANSACTION;

-- Apply intentional change
UPDATE users SET salary = 60000.00 WHERE id = 1;

-- Permanently persist the change to disk
COMMIT;

-- Verify persisted state
SELECT id, name, salary FROM users WHERE id = 1;

-- Re-enable autocommit to standard mode
SET autocommit = 1;
