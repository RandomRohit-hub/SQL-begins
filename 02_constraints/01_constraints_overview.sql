-- ============================================================================
-- MODULE 02: DATABASE INTEGRITY & CONSTRAINTS
-- Script 01: SQL Constraints Overview & Practical Examples
-- Purpose: Demonstrate NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- 1. UNIQUE Constraint: Prevent duplicate email addresses
-- ----------------------------------------------------------------------------
-- Add named unique constraint (if not already declared in CREATE TABLE)
ALTER TABLE users ADD CONSTRAINT uq_user_email UNIQUE (email);

-- ----------------------------------------------------------------------------
-- 2. CHECK Constraint: Validate data meets business rules before insertion
-- ----------------------------------------------------------------------------
-- Rule: Date of birth must be realistic (born after 1990)
ALTER TABLE users ADD CONSTRAINT check_dob CHECK (date_of_birth >= '1990-01-01');

-- Rule: Salary cannot be negative
ALTER TABLE users ADD CONSTRAINT check_positive_salary CHECK (salary >= 0);

-- ----------------------------------------------------------------------------
-- 3. DEFAULT Constraint: Assign fallback value when column is omitted
-- ----------------------------------------------------------------------------
ALTER TABLE users ALTER COLUMN is_active SET DEFAULT TRUE;

-- ----------------------------------------------------------------------------
-- 4. FOREIGN KEY & CASCADE Rules:
-- Shown in schema creation:
-- CONSTRAINT fk_user_address FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
-- Means: If user ID 5 is deleted, all addresses with user_id = 5 are auto-deleted.
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- 5. How to Drop a Constraint if requirements change
-- ----------------------------------------------------------------------------
-- Example syntax:
-- ALTER TABLE users DROP CHECK check_positive_salary;
-- ALTER TABLE users DROP INDEX uq_user_email;

-- Verify table constraints and indexes
SHOW INDEX FROM users;
