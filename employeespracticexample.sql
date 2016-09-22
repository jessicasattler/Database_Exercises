/* Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department. */
SELECT d.dept_name, CONCAT (e.first_name, ' ', e.last_name) AS deptartment_manager
FROM departments AS d
JOIN dept_manager AS dm
 ON d.dept_no = dm.dept_no
JOIN employees AS e
 ON dm.emp_no = e.emp_no
 WHERE dm.to_date = '9999-01-01';
 
/*  Find the name of all departments currently managed by women. */
SELECT d.dept_name, CONCAT (e.first_name, ' ', e.last_name) AS deptartment_manager
FROM departments AS d
JOIN dept_manager AS dm
 ON d.dept_no = dm.dept_no
JOIN employees AS e
 ON dm.emp_no = e.emp_no
 WHERE dm.to_date = '9999-01-01'
 	AND e.gender = 'f';
 	
/*  Find the current titles of employees currently working in the Customer Service department. */
SELECT t.title AS current_titles, COUNT(t.title) 
FROM titles AS t
JOIN salaries AS s
 ON t.emp_no = s.emp_no
JOIN employees AS e
 ON s.emp_no = e.emp_no
JOIN dept_emp AS de
 ON e.emp_no = de.emp_no
JOIN departments AS d
 ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
 AND t.to_date = '9999-01-01'
 AND d.dept_name = 'Customer Service'
 GROUP BY t.title;
 
 /*  Find the current titles of employees currently working in the Customer Service department. */
 SELECT  t.title AS Titles, COUNT(t.title) AS Count
 FROM titles AS t
 JOIN dept_emp AS de
  ON t.emp_no = de.emp_no
 JOIN departments AS d
 ON de.dept_no = d.dept_no
 WHERE de.to_date = '9999-01-01'
 	AND t.title = '9999-01-01'
 	AND d.dept_name = 'Customer Service' 
 	GROUP BY t.title;
 	
/*  Find the current titles of employees currently working in the Customer Service department. */
SELECT t.title AS Titles, COUNT (t.title)
FROM titles AS t
JOIN dept_emp AS de
 ON t.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
	AND de.to_date = '9999-01-01'
	AND t.to_date = '9999-01-01'
	GROUP BY t.title;


 