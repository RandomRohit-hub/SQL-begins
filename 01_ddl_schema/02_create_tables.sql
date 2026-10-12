-- ============================================================================
-- MODULE 01: DATA DEFINITION LANGUAGE (DDL)
-- Script 02: Create Tables
-- Purpose: Create relational tables with primary keys, datatypes, and foreign keys.
-- ============================================================================

USE startersql;

-- ----------------------------------------------------------------------------
-- Table 1: users (Primary Entity)
-- Stores personal details, salary, and system timestamps.
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------------------------------------------------------
-- Table 2: addresses (Relational Child Entity)
-- Relates to users(id) with cascading delete support.
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user_address
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);

-- ----------------------------------------------------------------------------
-- Table 3: usersDB (Sandbox Table in secondary database)
-- ----------------------------------------------------------------------------
USE Rohitsql;

CREATE TABLE IF NOT EXISTS usersDB (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Switch context back to primary database
USE startersql;
