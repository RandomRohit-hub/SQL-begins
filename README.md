# SQL Begins: Database & Query Starter Kit

Welcome to **SQL Begins**! This repository serves as a structured starter kit for learning and practicing core SQL concepts, ranging from Database Design (DDL) and Data Manipulation (DML) to Transaction Control (TCL).

---

## 📂 Project Structure

The codebase has been refactored into modular directories to separate concerns and ensure a logical execution flow:

```text
SQL-begins/
├── schema/             # Data Definition Language (DDL) scripts
│   ├── 01_create_startersql_database.sql
│   ├── 02_create_addresses_table.sql
│   └── 03_create_rohitsql_database.sql
├── data/               # Data Manipulation Language (DML) insert scripts
│   ├── 01_insert_users.sql
│   └── 02_insert_addresses.sql
└── queries/            # Querying (DQL), Updates (DML), and Transactions (TCL)
    ├── 01_select_queries.sql
    ├── 02_update_queries.sql
    └── 03_transaction_rollback.sql
```

---

## 🛠️ Database Schema & Entities

The repository sets up two databases for practice:

### 1. `startersql` Database (Primary)

#### 🔹 `users` Table
Stores basic information about the users.
* `id` (INT, Primary Key, Auto-increment)
* `name` (VARCHAR(100), Not Null)
* `email` (VARCHAR(100), Unique, Not Null)
* `gender` (ENUM: 'Male', 'Female', 'Other')
* `date_of_birth` (DATE)
* `salary` (DECIMAL(10,2))
* `created_at` (TIMESTAMP, Default Current)

#### 🔹 `addresses` Table
Stores physical addresses linked to users with transactional cascade controls.
* `id` (INT, Primary Key, Auto-increment)
* `user_id` (INT, Foreign Key referencing `users(id)` ON DELETE CASCADE)
* `street` (VARCHAR(255))
* `city` (VARCHAR(100))
* `state` (VARCHAR(100))
* `pincode` (VARCHAR(10))

---

### 2. `Rohitsql` Database (Secondary)

#### 🔹 `usersDB` Table
A sandbox user database demonstrating fundamental field types.
* `id` (INT, Primary Key, Auto-increment)
* `name` (VARCHAR(100), Not Null)
* `email` (VARCHAR(100), Unique, Not Null)
* `gender` (ENUM: 'Male', 'Female', 'Other')
* `date_of_birth` (DATE)
* `created_at` (TIMESTAMP)

---

## 🚀 Execution Guide

Follow this sequence to set up the databases, populate them with starter data, and run tests:

### Step 1: Database & Table Creation
Run the scripts inside the `schema/` directory to create the databases and structures:
```sql
-- Create main database and users table
SOURCE schema/01_create_startersql_database.sql;

-- Create relational addresses table linked to users
SOURCE schema/02_create_addresses_table.sql;

-- Create sandbox Rohitsql database
SOURCE schema/03_create_rohitsql_database.sql;
```

### Step 2: Seed Starter Data
Populate the tables with sample records:
```sql
-- Seed users table
SOURCE data/01_insert_users.sql;

-- Seed addresses table with user coordinates
SOURCE data/02_insert_addresses.sql;
```

### Step 3: Run Queries & Transactions
Explore search filters, data updates, and rollback mechanism tests:
```sql
-- Perform select, filter, sorting, and pagination tests
SOURCE queries/01_select_queries.sql;

-- Perform single and batch update operations
SOURCE queries/02_update_queries.sql;

-- Test safe transactional updates and rollbacks
SOURCE queries/03_transaction_rollback.sql;
```

---

## 📝 SQL Best Practices Demonstrated
* **Relational Integrity:** Cascading deletes (`ON DELETE CASCADE`) are used to automatically remove dependent child table records when parent records are deleted.
* **Transaction Safety:** Demonstrates using `SET autocommit = 0` and `ROLLBACK` for safe transaction rollback procedures.
* **Data Constraints:** Utilizes `UNIQUE`, `NOT NULL`, and `ENUM` values to maintain data cleanliness at the database engine level.