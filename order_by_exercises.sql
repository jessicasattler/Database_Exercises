/*Add a condition to find everybody with those names who is also male*/
/* Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft */
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya') ORDER BY first_name;
/* Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.*/
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya') ORDER BY first_name, last_name;
/* Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda. */
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya') ORDER BY last_name, first_name;
/* employees whose last name starts or ends with 'E' */
/* Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change! */
SELECT * FROM employees WHERE last_name LIKE 'E%'OR last_name LIKE '%E' ORDER BY emp_no;
/* now IN DESC order  */
SELECT * FROM employees WHERE last_name LIKE 'E%'OR last_name LIKE '%E' ORDER BY emp_no DESC;
/* employees whose last name starts and ends with 'E' */
SELECT * FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E' ORDER BY emp_no;
/* now IN DESC order */
SELECT * FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E' ORDER BY emp_no DESC;
/* employees hired in the 90s AND born on Christmas */
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '1%-12-25' ORDER BY birth_date, hire_date DESC;

 