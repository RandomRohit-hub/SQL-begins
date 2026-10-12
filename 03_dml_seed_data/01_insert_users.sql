-- ============================================================================
-- MODULE 03: DATA MANIPULATION LANGUAGE (DML) - SEED DATA
-- Script 01: Bulk Insert Users
-- Purpose: Populate the users table with realistic starter records.
-- ============================================================================

USE startersql;

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Riya Sharma', 'riya.sharma@example.com', 'Female', '2002-05-14', 45000.00),
('Rohit Verma', 'rohit.verma@example.com', 'Male', '2001-08-21', 55000.00),
('Neha Singh', 'neha.singh@example.com', 'Female', '2003-11-09', 38000.00),
('Amit Gupta', 'amit.gupta@example.com', 'Male', '2002-02-17', 62000.00),
('Kavita Patel', 'kavita.patel@example.com', 'Female', '2000-07-30', 72000.00),
('Sahil Mishra', 'sahil.mishra@example.com', 'Male', '2003-04-12', 32000.00),
('Pooja Mehta', 'pooja.mehta@example.com', 'Female', '2001-09-25', 48000.00),
('Rahul Joshi', 'rahul.joshi@example.com', 'Male', '2002-12-03', 58000.00),
('Simran Kumar', 'simran.kumar@example.com', 'Female', '2003-06-18', 35000.00),
('Karan Jain', 'karan.jain@example.com', 'Male', '2001-03-27', 68000.00),
('Anjali Das', 'anjali.das@example.com', 'Female', '2002-10-11', 42000.00),
('Varun Rao', 'varun.rao@example.com', 'Male', '2000-01-19', 85000.00),
('Megha Nair', 'megha.nair@example.com', 'Female', '2003-07-07', 36000.00),
('Deepak Shah', 'deepak.shah@example.com', 'Male', '2001-05-22', 60000.00),
('Isha Kapoor', 'isha.kapoor@example.com', 'Female', '2002-09-16', 52000.00),
('Manav Reddy', 'manav.reddy@example.com', 'Male', '2003-11-28', 40000.00),
('Tanvi Agarwal', 'tanvi.agarwal@example.com', 'Female', '2000-04-05', 78000.00),
('Yash Thakur', 'yash.thakur2@example.com', 'Male', '2002-06-13', 47000.00),
('Divya Roy', 'divya.roy@example.com', 'Female', '2001-08-24', 56000.00),
('Naman Saxena', 'naman.saxena@example.com', 'Male', '2003-01-31', 33000.00),
('Sneha Dubey', 'sneha.dubey@example.com', 'Female', '2002-03-08', 44000.00),
('Akshay Tiwari', 'akshay.tiwari@example.com', 'Male', '2001-10-20', 65000.00),
('Mansi Arora', 'mansi.arora@example.com', 'Female', '2000-12-14', 75000.00),
('Kunal Bansal', 'kunal.bansal@example.com', 'Male', '2002-07-26', 59000.00),
('Riya Ghosh', 'riya.ghosh@example.com', 'Female', '2003-02-09', 37000.00),
('Harsh Pandey', 'harsh.pandey@example.com', 'Male', '2001-04-17', 54000.00),
('Diya Menon', 'diya.menon2@example.com', 'Female', '2002-11-05', 49000.00),
('Saurabh Desai', 'saurabh.desai@example.com', 'Male', '2000-08-29', 82000.00),
('Khushi Bose', 'khushi.bose@example.com', 'Female', '2003-09-12', 39000.00),
('Pranav Khan', 'pranav.khan@example.com', 'Male', '2002-01-23', 61000.00);

-- Confirm inserted record count
SELECT COUNT(*) AS total_users_seeded FROM users;
