# SQL Query Bug: Handling NULL Values

This repository demonstrates a common SQL error related to unexpected results caused by NULL values within the `WHERE` clause of a query. The bug is demonstrated in `bug.sql` file, which contains a query that might produce incomplete or unexpected results due to NULLs in the 'salary' and 'department' columns. The solution, which handles these NULL values using `IS NOT NULL`, is provided in `bugSolution.sql`.

## Bug Description
The original SQL query incorrectly assumes all values in the relevant columns are non-NULL.  This oversight results in the exclusion of employees with NULL salaries and/or department values.  Furthermore, the query may be inefficient on large datasets without correct indexing. 

## Solution
The solution accounts for NULL values by explicitly checking for them using `IS NOT NULL` in the `WHERE` clause.