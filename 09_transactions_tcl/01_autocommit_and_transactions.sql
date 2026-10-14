-- ============================================================================
-- MODULE 09: TRANSACTION CONTROL LANGUAGE (TCL)
-- Script 01: Autocommit & Transactions (COMMIT vs ROLLBACK)
-- Purpose: Group SQL operations into atomic units with full rollback protection.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- QUICK RECALL:
-- MySQL default: autocommit = 1 (every individual query is immediately saved).
-- When autocommit = 0 or START TRANSACTION is used:
-- - Changes exist ONLY in your session until you explicitly COMMIT.
-- - ROLLBACK instantly undos all changes made since the transaction started.
-- ----------------------------------------------------------------------------

-- ============================================================================
-- DEMO A: Safe Testing with ROLLBACK (Discarding Changes)
-- ============================================================================

-- Step 1: Check initial records for id 1 and 2
SELECT id, name, salary FROM users WHERE id IN (1, 2);

-- Step 2: Disable autocommit
SET autocommit = 0;

-- Step 3: Delete records within transaction
DELETE FROM users WHERE id = 2;
DELETE FROM users WHERE id = 1;

-- Step 4: Verify they appear deleted in current session
SELECT id, name, salary FROM users WHERE id IN (1, 2);

-- Step 5: Rollback the transaction to undo deletions!
ROLLBACK;

-- Step 6: Verify rows are fully restored intact!
SELECT id, name, salary FROM users WHERE id IN (1, 2);

-- ============================================================================
-- DEMO B: Confirming Changes with COMMIT (Saving Permanently)
-- ============================================================================

START TRANSACTION;

-- Apply an intended update
UPDATE users SET salary = 62000.00 WHERE id = 1;

-- Permanently write changes to database
COMMIT;

-- Re-enable default autocommit mode
SET autocommit = 1;

-- Final verification
SELECT id, name, salary FROM users WHERE id = 1;
