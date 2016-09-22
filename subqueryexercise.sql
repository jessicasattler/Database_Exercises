/* Find all the employees with the same hire date as employee 101010 using a sub-query. */
SELECT first_name
FROM employees
WHERE hire_date IN(
	SELECT from_date
	FROM dept_emp
	WHERE emp_no = 101010 
); 
/* The following  IS the correct answer because from_date IS different FROM hire_date */
SELECT *
FROM employees
WHERE hire_date IN(
	SELECT hire_date
	FROM employees
	WHERE emp_no =101010	
);

/* AS join */
SELECT 
FROM 
JOIN
ON
WHERE;


/* Find all the titles held by all employees with the first name Aamod. */
SELECT title
FROM titles
WHERE emp_no IN(
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
)
GROUP BY title;

/* AS join */
SELECT title
FROM titles AS t
JOIN employees AS e
 ON e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod'
GROUP BY title;
 

/* Find all the current department managers that are female. */
SELECT *
FROM dept_manager
WHERE emp_no IN(
	SELECT emp_no
	FROM employees
	WHERE gender = 'f'
);
/* OR backwards is more correct */
SELECT first_name, gender
FROM employees
WHERE emp_no IN(
	SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01'
)
AND gender = 'F';
/* join */
SELECT *
FROM employees AS e
JOIN dept_manager AS dm
	ON e.emp_no = dm.emp_no
WHERE gender = 'F'
	AND dm.to_date = '9999-01-01';

/* Find ALL the department NAMES that have female mangers */
SELECT dept_name
FROM departments
WHERE dept_no IN(
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN(
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
		)
	AND to_date = '9999-01-01'
);
/* join */
SELECT d.dept_name
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON e.emp_no = dm.emp_no
WHERE e.gender = 'f'
AND dm.to_date = '9999-01-01';

 
/*  ```-- what is the most common birthday in the company? least common? */
/* most common , groups sorts them in order as well*/
 SELECT birth_date, count(birth_date)
 FROM employees
 GROUP BY birth_date DESC 
 ORDER BY count(birth_date)DESC
 LIMIT 1;
 
/*  least common, groups sorts them in order as well */
  SELECT birth_date, count(birth_date)
 FROM employees
 GROUP BY birth_date ASC 
 ORDER BY count(birth_date)ASC
 LIMIT 1;
 
/* -- what is the average salary of managers by department? */

/* -- how many employees currently work in each department? */
/* 
-- what is the average salary for each department? */
/* 
-- what was the average salary in the 80s? By department? */

/* -- how many times (on average) do employees switch titles? */

/* -- how many times (on average) do employees get a raise? */
	
	
