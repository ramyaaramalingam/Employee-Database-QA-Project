
-- QA Test 1: Verify total employee count
SELECT COUNT(*) AS total_employees
FROM employees;

-- Expected result: 5

-- QA Test 2: Check for duplicate employee IDs
SELECT employee_id, COUNT(*) AS record_count
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- Expected result: 0 rows

-- QA Test 3: Check for missing required values
SELECT *
FROM employees
WHERE first_name IS NULL
   OR last_name IS NULL
   OR department IS NULL
   OR employment_status IS NULL;

-- Expected result: 0 rows

-- QA Test 4: Check for duplicate email addresses
SELECT email, COUNT(*) AS record_count
FROM employees
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;

-- Expected result: 0 rows

-- QA Test 5: Check for invalid salary values
SELECT *
FROM employees
WHERE salary < 0;

-- Expected result: 0 rows

-- QA Test 6: Check for invalid employment statuses
SELECT *
FROM employees
WHERE employment_status NOT IN ('Active', 'Inactive');

-- Expected result: 0 rows
