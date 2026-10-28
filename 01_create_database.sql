
-- Employee Database QA Portfolio Project
-- Purpose: Create a sample employee table and test data

-- Create the employee table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NOT NULL,
    email TEXT UNIQUE,
    salary REAL,
    employment_status TEXT NOT NULL
        CHECK (employment_status IN ('Active', 'Inactive'))
);

-- Insert fictional employee test data
INSERT INTO employees
    (employee_id, first_name, last_name, department, email, salary, employment_status)
VALUES
    (101, 'Anita', 'Rao', 'IT', 'anita.rao@example.com', 65000, 'Active'),
    (102, 'David', 'Miller', 'HR', 'david.miller@example.com', 58000, 'Active'),
    (103, 'Priya', 'Shah', 'Finance', 'priya.shah@example.com', 62000, 'Inactive'),
    (104, 'John', 'Wilson', 'IT', 'john.wilson@example.com', 70000, 'Active'),
    (105, 'Maria', 'Garcia', 'Operations', 'maria.garcia@example.com', 54000, 'Active');

-- Verify that the records were inserted
SELECT * FROM employees;
