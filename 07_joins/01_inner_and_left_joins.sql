-- ============================================================================
-- MODULE 07: TABLE JOINS
-- Script 01: INNER JOIN & LEFT JOIN
-- Purpose: Combine rows from two or more tables based on a related column.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- QUICK RECALL:
-- - INNER JOIN: Returns only records that have matching values in both tables.
-- - LEFT JOIN:  Returns ALL records from the left table, and matched records 
--               from the right table (NULL if no match).
-- - RIGHT JOIN: Returns ALL records from the right table, and matched records 
--               from the left table.
-- ----------------------------------------------------------------------------

-- 1. Review tables before joining
SELECT id, name FROM users LIMIT 5;
SELECT user_id, city, state FROM address LIMIT 5;

-- 2. INNER JOIN: Retrieve users who have an existing address record
SELECT 
    users.id AS user_id,
    users.name,
    users.gender,
    address.city,
    address.state,
    address.pincode
FROM users
INNER JOIN address 
    ON users.id = address.user_id;

-- 3. LEFT JOIN: Retrieve ALL users, along with address if present (NULL otherwise)
SELECT 
    users.id AS user_id,
    users.name,
    users.gender,
    address.city,
    address.state
FROM users
LEFT JOIN address 
    ON users.id = address.user_id;

-- 4. Find users who DO NOT have an address record (using LEFT JOIN + IS NULL)
SELECT 
    users.id,
    users.name,
    users.email
FROM users
LEFT JOIN address 
    ON users.id = address.user_id
WHERE address.id IS NULL;

-- 5. Multi-column projection with table aliases (u for users, a for address)
SELECT 
    u.id,
    u.name,
    u.salary,
    a.street,
    a.city
FROM users AS u
INNER JOIN address AS a 
    ON u.id = a.user_id
WHERE u.salary > 50000;
