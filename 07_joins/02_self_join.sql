-- ============================================================================
-- MODULE 07: TABLE JOINS
-- Script 02: Self Join (Hierarchical / Referral Relationships)
-- Purpose: Join a table to itself using aliases to model parent-child links.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- CONCEPT:
-- A Self Join joins a table with itself. It is commonly used for:
-- 1. Referral systems (user -> referred_by user)
-- 2. Organizational hierarchies (employee -> manager)
-- 3. Category trees (sub-category -> parent category)
-- ----------------------------------------------------------------------------

-- Step 1: Ensure the referred_by_id column exists
ALTER TABLE users ADD COLUMN IF NOT EXISTS referred_by_id INT;

-- Step 2: Seed referral relationships among existing users
-- User 1 referred users 2, 3, 12, 14, 17, 19, 20
UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3, 12, 14, 17, 19, 20);

-- User 2 referred user 4
UPDATE users SET referred_by_id = 2 WHERE id = 4;

-- Step 3: INNER JOIN Self Join
-- Shows ONLY users who were referred by someone
SELECT 
    a.id AS user_id,
    a.name AS user_name,
    b.id AS referrer_id,
    b.name AS referred_by_name
FROM users AS a
INNER JOIN users AS b 
    ON a.referred_by_id = b.id;

-- Step 4: LEFT JOIN Self Join
-- Shows ALL users, showing who referred them (NULL if not referred)
SELECT 
    a.id AS user_id,
    a.name AS user_name,
    COALESCE(b.name, 'Direct Signup') AS referred_by
FROM users AS a
LEFT JOIN users AS b 
    ON a.referred_by_id = b.id
LIMIT 10;

-- Step 5: Referral Leaderboard (Self Join with Aggregation)
-- Counts how many users each referrer brought in
SELECT 
    b.id AS referrer_id,
    b.name AS referrer_name,
    COUNT(a.id) AS total_referrals
FROM users AS a
INNER JOIN users AS b 
    ON a.referred_by_id = b.id
GROUP BY b.id, b.name
ORDER BY total_referrals DESC;
