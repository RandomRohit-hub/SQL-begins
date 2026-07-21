USE startersql;

-- Example 1: View all users
SELECT * FROM users;

-- Example 2: Turn off autocommit to handle transactions manually
SET autocommit = 0;

-- Start transaction and perform delete
DELETE FROM users WHERE id = 1;

-- Check table state inside the transaction
SELECT * FROM users;

-- Rollback changes
ROLLBACK;

-- Verify changes were reverted
SELECT * FROM users;

-- Enable autocommit back to default
SET autocommit = 1;
