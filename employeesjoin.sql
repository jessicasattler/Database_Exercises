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

SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;



