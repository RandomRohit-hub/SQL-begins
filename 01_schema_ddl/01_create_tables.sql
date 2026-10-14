-- ============================================================================
-- MODULE 01: DATA DEFINITION LANGUAGE (DDL)
-- Script 01: Create Database & Core Tables
-- Purpose: Setup database and relational entities (users, address, admin_user).
-- ============================================================================

CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

-- ----------------------------------------------------------------------------
-- 1. Table: users (Primary Entity)
-- Stores customer/user personal details, salary, and creation timestamps.
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
-- 2. Table: address (Child Relational Entity)
-- Links to users(id). If a user is deleted, their address is auto-deleted.
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS address (
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
-- 3. Table: admin_user (Staff/Admin Entity for Joins & Set Operations)
-- Represents administrator accounts used for UNION and comparison queries.
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS admin_user (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
