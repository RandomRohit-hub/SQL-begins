-- ============================================================================
-- MODULE 03: DATA MANIPULATION LANGUAGE (DML) - SEED DATA
-- Script 02: Seed User Addresses
-- Purpose: Populate relational addresses table linked to seeded users by user_id.
-- ============================================================================

USE startersql;

INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
(1,  '101 MG Road', 'Bhopal', 'Madhya Pradesh', '462001'),
(2,  '22 Park Street', 'Indore', 'Madhya Pradesh', '452001'),
(3,  '45 Nehru Nagar', 'Delhi', 'Delhi', '110001'),
(4,  '12 FC Road', 'Pune', 'Maharashtra', '411001'),
(5,  '67 Brigade Road', 'Bengaluru', 'Karnataka', '560001'),
(6,  '89 Anna Salai', 'Chennai', 'Tamil Nadu', '600002'),
(7,  '34 Marine Drive', 'Mumbai', 'Maharashtra', '400001'),
(8,  '15 Charminar Road', 'Hyderabad', 'Telangana', '500001'),
(9,  '78 MI Road', 'Jaipur', 'Rajasthan', '302001'),
(10, '90 CG Road', 'Ahmedabad', 'Gujarat', '380009'),
(11, '44 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(12, '56 Civil Lines', 'Prayagraj', 'Uttar Pradesh', '211001'),
(13, '18 Gomti Nagar', 'Lucknow', 'Uttar Pradesh', '226010'),
(14, '71 Sector 17', 'Chandigarh', 'Chandigarh', '160017'),
(15, '63 Fraser Road', 'Patna', 'Bihar', '800001'),
(16, '27 Main Road', 'Ranchi', 'Jharkhand', '834001'),
(17, '52 MG Road', 'Kochi', 'Kerala', '682001'),
(18, '11 Temple Road', 'Mysuru', 'Karnataka', '570001'),
(19, '39 VIP Road', 'Kolkata', 'West Bengal', '700001'),
(20, '14 Residency Road', 'Srinagar', 'Jammu and Kashmir', '190001'),
(21, '91 Beach Road', 'Visakhapatnam', 'Andhra Pradesh', '530001'),
(22, '26 Race Course Road', 'Coimbatore', 'Tamil Nadu', '641001'),
(23, '55 College Road', 'Nagpur', 'Maharashtra', '440001'),
(24, '80 GS Road', 'Guwahati', 'Assam', '781005'),
(25, '120 Janpath Road', 'Bhubaneswar', 'Odisha', '751001');

-- Confirm inserted record count
SELECT COUNT(*) AS total_addresses_seeded FROM addresses;
