-- is there wage discrimination based on gender in the company?
SELECT dept_name, gender, AVG(s.salary)
FROM employees AS e
JOIN salaries AS s 
  ON e.emp_no = s.emp_no
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON de.dept_no = d.dept_no
WHERE s.to_date > CURTIME()
  AND de.to_date > CURTIME()
GROUP BY gender, dept_name
ORDER BY dept_name, gender;

-- breakdown departments by gender
SELECT COUNT(e.emp_no), e.gender, d.dept_name 
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON de.dept_no = d.dept_no
WHERE de.to_date > curtime()
GROUP BY d.dept_no, e.gender;
