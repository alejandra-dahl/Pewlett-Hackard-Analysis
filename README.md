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
   
    There are only 1,546 people able to mentor. This won't be enough as 
    
    this number is exponentially smaller than the 90K + employees retiring.
    

Recruiters should definitely focus on finding mentors for the development team since they will be having the highest number of retirees, as seen in the first table below. Finally, the second table shows the number of potential mentors available to that department.

![total retires](https://user-images.githubusercontent.com/90485451/151623283-33c741f7-1e15-4313-9319-87d70ace6ab0.png)  


## Additional Queries or Tables

I then created a table to show the corresponding salaries for each retiree. I believe it's essential to see the sum of salaries after everyone has left (Sum of salaries after retirement - $7,086,793,392) and the sum of salaries during the mentorship program (Salary remaining from mentors -- $81,583,447)

### Sum of Salaries After Retirement

![retiree_salaries](https://user-images.githubusercontent.com/90485451/151623246-827db8ef-ef9a-4ad5-9bb9-d82c129ece73.png)

### Possible Mentors

![mentors_salaries](https://user-images.githubusercontent.com/90485451/151623264-394c2583-6a01-4947-a726-abab27400d7e.png)

