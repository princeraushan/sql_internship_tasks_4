-- =====================================================
-- Task 4: SQL Developer Internship
-- Topic: Sorting and Limiting Data
-- =====================================================

-- Use the existing database
USE intern_training_db;



-- -----------------------------------------------------
-- Step 1: View all records
-- Helps understand data before sorting
-- -----------------------------------------------------
SELECT * FROM students;

-- -----------------------------------------------------
-- Step 2: Sort data using ORDER BY (Ascending)
-- Default sort order is ASC
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY age ASC;

-- -----------------------------------------------------
-- Step 3: Sort data using ORDER BY (Descending)
-- Fetch records from highest age to lowest
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY age DESC;

-- -----------------------------------------------------
-- Step 4: Sort using multiple columns
-- First sort by age (DESC), then by name (ASC)
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY age DESC, name ASC;

-- -----------------------------------------------------
-- Step 5: Limit number of records using LIMIT
-- Fetch top 3 oldest students
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY age DESC
LIMIT 3;

-- -----------------------------------------------------
-- Step 6: Combine WHERE with ORDER BY and LIMIT
-- Fetch top 5 students older than 20
-- -----------------------------------------------------
SELECT *
FROM students
WHERE age > 20
ORDER BY age DESC
LIMIT 5;

-- -----------------------------------------------------
-- Step 7: Use OFFSET for pagination
-- Page 1: First 3 records
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY id
LIMIT 3 OFFSET 0;

-- -----------------------------------------------------
-- Step 8: Pagination (Next Page)
-- Page 2: Next 3 records
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY id
LIMIT 3 OFFSET 3;

-- -----------------------------------------------------
-- Step 9: Leaderboard-style query
-- Display top 5 students based on age
-- -----------------------------------------------------
SELECT name, age
FROM students
ORDER BY age DESC
LIMIT 5;

-- -----------------------------------------------------
-- Step 10: Sorting using column alias
-- Improves readability
-- -----------------------------------------------------
SELECT 
    name AS student_name,
    age AS student_age
FROM students
ORDER BY student_age DESC;

-- -----------------------------------------------------
-- Step 11: Edge case testing
-- LIMIT greater than total records
-- -----------------------------------------------------
SELECT *
FROM students
ORDER BY age DESC
LIMIT 100;

-- -----------------------------------------------------
-- End of Task 4
-- Demonstrates sorting, limiting, and pagination
-- =====================================================
