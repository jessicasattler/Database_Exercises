SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

/* shows each department along with the name of the current manager for that department. */
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9999%';

/* ALL departments currently manged BY women */
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9999%' AND e.gender = 'f';


 /*  Find the current titles of employees currently working in the Customer Service department. */
 SELECT  t.title AS Titles, COUNT(t.title) AS Count
 FROM titles AS t
 JOIN dept_emp AS de
  ON t.emp_no = de.emp_no
 JOIN departments AS d
 ON de.dept_no = d.dept_no
 WHERE de.to_date = '9999-01-01'
 	AND d.dept_name = 'Customer Service' 
 	GROUP BY t.title;



/* Find the current salary of all current managers. */


SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ', e.last_name) AS 'Manager Name', s.salary AS 'salary'
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON e.emp_no = dm.emp_no
JOIN salaries AS s
	ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
	AND s.to_date = '9999-01-01';

/* bonus */
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT (dme.first_name, ' ', dme.last_name) AS 'Manager''s Name'
FROM employees AS e
JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS dme
	ON dme.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'
	AND dm.to_date = '9999-01-01'

