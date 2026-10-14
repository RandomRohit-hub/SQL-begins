-- ============================================================================
-- MODULE 03: SEED DATA (DML)
-- Script 02: Insert User Addresses
-- Purpose: Seed relational address records linked to users(id) via foreign key.
-- ============================================================================

USE startersql;

INSERT INTO address (user_id, street, city, state, pincode) VALUES
(1,  'MG Road',         'Bhopal',    'Madhya Pradesh', '462001'),
(2,  'Civil Lines',     'Jhansi',    'Uttar Pradesh',  '284001'),
(3,  'Vijay Nagar',     'Indore',    'Madhya Pradesh', '452010'),
(4,  'Arera Colony',    'Bhopal',    'Madhya Pradesh', '462016'),
(5,  'Hazratganj',      'Lucknow',   'Uttar Pradesh',  '226001'),
(6,  'MP Nagar',        'Bhopal',    'Madhya Pradesh', '462011'),
(7,  'Palasia',         'Indore',    'Madhya Pradesh', '452001'),
(8,  'Connaught Place', 'New Delhi', 'Delhi',          '110001'),
(9,  'Civil Lines',     'Kanpur',    'Uttar Pradesh',  '208001'),
(10, 'Kolar Road',      'Bhopal',    'Madhya Pradesh', '462042');

-- Verify inserted address records
SELECT * FROM address;
