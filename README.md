# Employee Database – SQL Quality Assurance Project

## Project Overview
This project demonstrates SQL-based quality assurance testing using a fictional employee database and SQLite.

## Objectives
- Validate employee records using SQL queries.
- Identify duplicate values and missing required information.
- Verify database constraints.
- Perform negative testing using invalid data.
- Document expected and actual test results.

## Tools Used
- SQLite
- SQL
- Visual Studio Code
- GitHub

## Test Scenarios
1. Verify total employee record count.
2. Check for duplicate employee IDs.
3. Check for missing required fields.
4. Check for duplicate email addresses.
5. Identify negative salary values.
6. Validate employment status values.
7. Test duplicate email rejection.
8. Test missing first-name rejection.
9. Test invalid employment status rejection.

## Test Results
The database contains five fictional employee records. Validation queries returned the expected results, and negative tests confirmed that SQLite rejected duplicate email addresses, missing first names, and invalid employment statuses.

## Project Files
- `01_create_database.sql` — Creates the employee table and inserts sample records.
- `02_qa_validation_tests.sql` — Contains SQL validation queries.
- `test-results.md` — Documents test scenarios and outcomes.

## Disclaimer
This project uses fictional data for educational and portfolio purposes.
