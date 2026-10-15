-- ============================================================================
-- MODULE 10: DATABASE VIEWS
-- Script 01: Create and Manage SQL Views
-- Purpose: Create virtual tables to simplify complex queries and restrict sensitive data.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- QUICK RECALL:
-- What is a View?
-- A virtual table based on the result-set of an SQL query.
-- A view contains rows and columns just like a real table, but it does NOT 
-- duplicate physical storage—it dynamically pulls data from the underlying tables.
--
-- Why use Views?
-- 1. Security: Expose only non-sensitive columns (e.g. hide salary/passwords).
-- 2. Simplicity: Pre-join complex tables so developers query a simple view name.
-- 3. Consistency: Standardize business logic and filter definitions across teams.
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- 1. Filtered View: High-Earner Users
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW rich_users AS
SELECT 
    id, 
    name, 
    email, 
    salary 
FROM users 
WHERE salary > 70000;

-- Query the view just like a regular table
SELECT * FROM rich_users;

-- ----------------------------------------------------------------------------
-- 2. Security View: Public User Directory (Omits sensitive salary details)
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW public_users_directory AS
SELECT 
    id,
    name,
    gender,
    created_at
FROM users
WHERE is_active = TRUE;

SELECT * FROM public_users_directory LIMIT 5;

-- ----------------------------------------------------------------------------
-- 3. Multi-Table Join View: User Details with Complete Address
-- ----------------------------------------------------------------------------
CREATE OR REPLACE VIEW user_address_details AS
SELECT 
    u.id AS user_id,
    u.name,
    u.email,
    a.street,
    a.city,
    a.state,
    a.pincode
FROM users AS u
INNER JOIN address AS a 
    ON u.id = a.user_id;

-- Querying pre-joined data effortlessly
SELECT * FROM user_address_details WHERE city = 'Bhopal';

-- ----------------------------------------------------------------------------
-- 4. How to Drop / Remove a View
-- ----------------------------------------------------------------------------
DROP VIEW IF EXISTS rich_users;
-- Recreating it to keep as a practice asset
CREATE VIEW rich_users AS
SELECT id, name, email, salary FROM users WHERE salary > 70000;
