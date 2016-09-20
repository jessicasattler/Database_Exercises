/* employees with first names Irena, Vidya, or Maya */
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya');
/* employees whose last name starts with 'E' */
SELECT * FROM employees WHERE last_name LIKE 'E%';
/* employees hired in the 90s */
SELECT * FROM employees WHERE hire_date LIKE '199%';
/* employees born on Christmas */
SELECT * FROM employees WHERE birth_date LIKE '1%-12-25';
/*  employees with a q in their last name  */
SELECT * FROM employees WHERE last_name LIKE '%q%';
 