-- ============================================================================
-- MODULE 03: SEED DATA (DML)
-- Script 03: Insert Admin Users
-- Purpose: Seed admin users table for role comparisons, joins, and set operations.
-- ============================================================================

USE startersql;

INSERT INTO admin_user (id, name, email, gender, date_of_birth, salary) VALUES
(1, 'Super Admin', 'admin@startersql.com', 'Male',   '1999-01-01', 95000),
(2, 'Aman Verma',  'aman@gmail.com',       'Male',   '2003-08-20', 35000),
(3, 'Priya Singh', 'priya@gmail.com',      'Female', '2004-02-10', 40000),
(4, 'Neha Sharma', 'neha@gmail.com',       'Female', '2002-11-25', 45000),
(5, 'Vikas Patel', 'vikas@gmail.com',      'Male',   '2003-06-12', 32000);

-- Verify inserted admin records
SELECT * FROM admin_user;
