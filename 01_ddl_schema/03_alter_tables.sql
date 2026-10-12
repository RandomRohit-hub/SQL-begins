-- ============================================================================
-- MODULE 01: DATA DEFINITION LANGUAGE (DDL)
-- Script 03: Alter Tables
-- Purpose: Modify existing table structures (add columns, change types, rename).
-- ============================================================================

USE startersql;

-- 1. Add a new column with a default value
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- 2. Modify an existing column's datatype length
ALTER TABLE users MODIFY COLUMN name VARCHAR(150) NOT NULL;

-- 3. Add an index for faster lookup queries (e.g. searching by city)
ALTER TABLE addresses ADD INDEX idx_city (city);

-- 4. Example: How to drop a column if no longer needed (commented for safety)
-- ALTER TABLE users DROP COLUMN is_active;

-- 5. View table structure after alterations
DESCRIBE users;
DESCRIBE addresses;
