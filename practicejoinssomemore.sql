/* Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department. */
SELECT dept_name, CONCAT(first_name, ' ',last_name) AS dept_manager
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';

/* Find the NAME of ALL departments currently manged BY women */
SELECT dept_name, CONCAT(first_name,' ', last_name) AS female_managers
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no
WHERE e.gender = 'F'
	AND dm.to_date LIKE '999%';
	
/* Find the current titles of employees currently working in the Customer Service department. */
SELECT title,COUNT(t.title) AS Count, dept_name
FROM titles AS t
JOIN employees AS e
	ON t.emp_no = e.emp_no
JOIN dept_emp AS de
	ON e.emp_no = de.emp_no 
JOIN departments AS dep
	ON de.dept_no = dep.dept_no
WHERE de.to_date = '9999-01-01'
	AND dep.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT  t.title AS Titles, COUNT(t.title) AS Count
 FROM titles AS t
 JOIN dept_emp AS de
  ON t.emp_no = de.emp_no
 JOIN departments AS d
 ON de.dept_no = d.dept_no
 WHERE de.to_date = '9999-01-01'
 	AND t.to_date = '9999-01-01'
 	AND d.dept_no = 'd009' 
 	GROUP BY t.title;
 
/*  Find the salary of ALL the current managers */
SELECT dept_name,CONCAT(first_name, ' ', last_name),salary
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no
JOIN salaries AS s
	ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '999%'
	AND	s.to_date LIKE '999%'
GROUP BY d.dept_name;
