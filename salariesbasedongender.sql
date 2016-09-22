-- IS there wage discrimination based ON gender IN the company based on department?
SELECT d.dept_name,e.gender, AVG(s.salary) AS average_salary
FROM employees AS e
 JOIN salaries AS s
 	ON e.emp_no= s.emp_no
 JOIN dept_emp AS de
 	ON de.emp_no = e.emp_no
 JOIN departments AS d
 	ON de.dept_no = d.dept_no
 WHERE s.to_date > CURTIME()
 GROUP BY e.gender, d.dept_name
 ORDER BY d.dept_name, e.gender;
/*  how many people WORK ON EACH department based ON gender  */
 SELECT d.dept_name, count(e.gender),e.gender
 FROM employees AS e
 JOIN dept_emp AS de
 	ON e.emp_no = de.emp_no
 JOIN departments AS d
 	ON d.dept_no = de.dept_no
 GROUP BY d.dept_no, e.gender
 ORDER BY d.dept_name, e.gender;
 
 
 