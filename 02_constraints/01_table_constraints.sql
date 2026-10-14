-- ============================================================================
-- MODULE 02: DATABASE INTEGRITY & CONSTRAINTS
-- Script 01: Table Constraints Overview
-- Purpose: Enforce data consistency using PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, DEFAULT.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- 1. PRIMARY KEY: Uniquely identifies each record (cannot be NULL)
-- Declared in table creation: `id INT AUTO_INCREMENT PRIMARY KEY`
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- 2. FOREIGN KEY with ON DELETE CASCADE:
-- Enforces relational integrity between parent (users) and child (address).
-- When a user is deleted, their corresponding address records are also removed.
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- 3. UNIQUE Constraint: Prevent duplicate values in specified columns
-- ----------------------------------------------------------------------------
ALTER TABLE users ADD CONSTRAINT uq_user_email UNIQUE (email);

-- ----------------------------------------------------------------------------
-- 4. CHECK Constraint: Validate data rules before insertion
-- ----------------------------------------------------------------------------
-- Rule A: Date of birth must be after 1990
ALTER TABLE users ADD CONSTRAINT check_dob CHECK (date_of_birth >= '1990-01-01');

-- Rule B: Salary cannot be negative
ALTER TABLE users ADD CONSTRAINT check_positive_salary CHECK (salary >= 0);

-- ----------------------------------------------------------------------------
-- 5. DEFAULT Constraint: Supply automatic fallback values when omitted
-- ----------------------------------------------------------------------------
ALTER TABLE users ALTER COLUMN is_active SET DEFAULT TRUE;

-- ----------------------------------------------------------------------------
-- 6. Inspect constraints and indexes on users table
-- ----------------------------------------------------------------------------
SHOW INDEX FROM users;
