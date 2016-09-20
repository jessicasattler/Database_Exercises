/*Update your query for 'Irena' , 'Vidya' , or 'Maya' to use OR instead of IN */
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya';
/*Add a condition to find everybody with those names who is also male*/
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya');
/* employees whose last name starts or ends with 'E' */
SELECT * FROM employees WHERE last_name LIKE 'E%'OR last_name LIKE '%E';
/* employees whose last name starts and ends with 'E' */
SELECT * FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E';
/* employees hired in the 90s AND born on Christmas */
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '1%-12-25';
/* employees with a 'q' in their last name but not 'qu' */
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
 