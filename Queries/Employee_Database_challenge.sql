-- Deliverable 1

SELECT 
	e.emp_no, 
	e.first_name, 
	e.last_name,
    t.titles, 
	t.from_date, 
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Test new table
SELECT * FROM retirement_titles


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	titles
--INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Use unique titles table to create new table "retiring titles"
SELECT COUNT(emp_no), titles
--INTO retiring_titles
FROM unique_titles
GROUP BY titles
ORDER BY count(emp_no) DESC;


-- Join employee, dept_emp, and title tables to create eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
    e.first_name, e.last_name,e.birth_date,
    d.from_date, d.to_date,
    t.titles
--INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as d
ON (e.emp_no = d.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (d.to_date = '9999-01-01')
ORDER BY e.emp_no;

--ADDITIONAL TABLES AND QUERIES

--Mentorship plus their salaries
SELECT m.emp_no, m.first_name, m.last_name, m.titles, s.salary
	INTO mentorship_salaries
FROM mentorship_eligibility as m
	INNER JOIN salaries as s
		on m.emp_no = s.emp_no

--Salary remaining from mentors -- $81,583,447
SELECT SUM (salary)
FROM mentorship_salaries

-- Retiree total salary
SELECT r.emp_no, r.first_name, r.last_name, s.salary
	INTO retiree_salaries
FROM retirement_titles as r
	INNER JOIN salaries as s
		on r.emp_no = s.emp_no
		
-- Sum of salaries after retirement - $7,086,793,392
SELECT SUM (salary)
FROM retiree_salaries


