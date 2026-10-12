-- ============================================================================
-- MODULE 01: DATA DEFINITION LANGUAGE (DDL)
-- Script 01: Create Databases
-- Purpose: Setup the practice databases with IF NOT EXISTS safeguards.
-- ============================================================================

-- 1. Create primary database for user and address records
CREATE DATABASE IF NOT EXISTS startersql;

-- 2. Create secondary sandbox database for isolated tests
CREATE DATABASE IF NOT EXISTS Rohitsql;

-- 3. Display available databases to verify creation
SHOW DATABASES;
