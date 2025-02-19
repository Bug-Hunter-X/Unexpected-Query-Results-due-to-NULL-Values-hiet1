```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL AND department IS NOT NULL;
```
This revised query explicitly checks for non-NULL values in both the 'salary' and 'department' columns.  This ensures that all employees who meet the criteria are included, solving the problem of data omission due to NULLs.

For performance, add indexes to the 'department' and 'salary' columns.