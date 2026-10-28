# SQL Quality Assurance Test Results

## Project: Employee Database QA

**Environment:** SQLite  
**Test type:** Database validation and negative testing

| Test ID | Test scenario | Expected result | Actual result | Status |
|---|---|---|---|---|
| TC-001 | Verify employee record count | 5 records | 5 records | PASS |
| TC-002 | Check for duplicate employee IDs | No duplicates | No duplicates found | PASS |
| TC-003 | Check required fields for missing values | No missing values | No missing values found | PASS |
| TC-004 | Check for duplicate email addresses | No duplicates | No duplicates found | PASS |
| TC-005 | Check for negative salaries | No negative salaries | No negative salaries found | PASS |
| TC-006 | Check for invalid employment statuses | No invalid statuses | No invalid statuses found | PASS |
| TC-007 | Attempt to insert a duplicate email | Database rejects the record | SQLite rejected the insert with a UNIQUE constraint error | PASS |

## Summary

Seven database validation tests were performed against the fictional employee dataset. The clean-data checks returned the expected results. The negative test confirmed that the database's unique email constraint prevented a duplicate email from being inserted.

These results demonstrate basic SQL validation, negative testing, expected-versus-actual result comparison, and test documentation.

| TC-008 | Attempt to insert an employee with a missing first name | Database rejects the record | SQLite rejected the insert with a NOT NULL constraint error | PASS |


| TC-009 | Attempt to insert an invalid employment status | Database rejects the record | SQLite rejected the insert with a CHECK constraint error | PASS |

