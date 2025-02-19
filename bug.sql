```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This SQL query might produce unexpected results if there are any NULL values in the 'salary' column. The `>` operator will treat NULL as neither greater than nor less than 100000, effectively excluding employees with NULL salaries from the result set.  This is a common issue and easily overlooked if NULL values are not considered.

Another issue could arise if 'department' column also contains NULL values.  Again, these records will be excluded because the condition `department = 'Sales'` evaluates to UNKNOWN when comparing 'Sales' to NULL.

Lastly, if the `employees` table has a large number of rows and indexes aren't used, this query can be very slow.