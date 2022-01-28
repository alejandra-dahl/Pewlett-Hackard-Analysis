# Pewlett-Hackard-Analysis

## Overview of Analysis

Pewlett Hackard has requested an analysis of their employee database. They asked to use the PostgreSQL to help them prepare for current employees who are close to retiring. They'd like to know the number of retiring employees - including their title. They'd also like to indentify employees eligible to join a mentor program.

## Results

1. 90,398 employees of the company will be retiring soon.

2. Senior Engineer, Senior Staff and Engineer have the highest number of retirees in the company.

3. Only 2 managers will be retiring

4. The analysis also shows that many future retirees qualify to mentor new hires. There are 1,549 employees able to mentor.



## Summary

-- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

    90,398 roles will need to be filled.

-- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

    There are only 1,546 people able to mentor. This won't be enough as this number is exponentially smaller than the 90K + employees retiring.

### Additional Queries or Tables

Recruiters should definitely focus on finding mentors for the development team since they will be having the highest number of retirees. As seen in the first table below. The second table shows the number of potential mentors available to that department.

I then created a table to show the corresponding salaries for each retiree. I believe it's essential to see the sum of salaries after everyone has left (Sum of salaries after retirement - $7,086,793,392) and the sum of salaries during the mentorship program (Salary remaining from mentors -- $81,583,447)