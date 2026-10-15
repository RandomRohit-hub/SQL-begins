-- ============================================================================
-- MODULE 01: DATA DEFINITION LANGUAGE (DDL)
-- Script 02: Alter Tables
-- Purpose: Modify table schemas without losing existing data (ADD, MODIFY, DROP).
-- ============================================================================

USE startersql;

-- 1. Add a new column with a default value
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- 2. Modify an existing column's data type or constraint length
ALTER TABLE users MODIFY COLUMN name VARCHAR(150) NOT NULL;

-- 3. Add an index to improve search speed on frequently queried columns
ALTER TABLE address ADD INDEX idx_city (city);

-- 4. Add self-referencing referral tracking column
ALTER TABLE users ADD COLUMN referred_by_id INT;

-- 5. Syntax Example: Drop a column (commented out for safety)
-- ALTER TABLE users DROP COLUMN is_active;

-- 5. Inspect updated table structures
DESCRIBE users;
DESCRIBE address;
DESCRIBE admin_user;
