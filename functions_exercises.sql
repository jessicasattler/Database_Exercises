/* Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names */
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya') ORDER BY first_name;
/* Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.*/
SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya') ORDER BY first_name, last_name;
/* Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda. */
SELECT COUNT(*), gender FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya' GROUP BY gender;
/* employees whose last name starts or ends with 'E' */
/* Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change! */
/* Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results */
SELECT CONCAT (first_name,' ', last_name) FROM employees WHERE last_name LIKE 'E%'OR last_name LIKE '%E' ORDER BY emp_no;
/* now IN DESC order  */
SELECT * FROM employees WHERE last_name LIKE 'E%'OR last_name LIKE '%E' ORDER BY emp_no DESC;
/* employees whose last name starts and ends with 'E' */
/* Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results */
SELECT CONCAT (first_name,' ', last_name) FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E' ORDER BY emp_no;
/* now IN DESC order */
SELECT * FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E' ORDER BY emp_no DESC;
/* employees hired in the 90s AND born on Christmas */
/* For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate()) */
SELECT datediff(now(),hire_date) FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '1%-12-25' ORDER BY birth_date, hire_date DESC;
/* Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. You will find there were some duplicate first and last name pairs in your previous results. Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others. */
SELECT last_name,  COUNT(last_name)  AS 'Count of Last Name' FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY last_name;
/* Return 10 employees in a result set named "full_name" in the format of "lastname, firstname" for each employee. */
SELECT CONCAT(last_name, '  ', first_name) AS full_name FROM employees  LIMIT 10;
/* Add the date of birth for each employee as "DOB" to the query. */

SELECT birth_date AS DOB FROM employees;
/* Update the query to format full name to include the employee number so it is formatted as "employee number - lastname, firstname" */
SELECT CONCAT(emp_no,'-',last_name,', ', first_name) AS 'full_name', birth_date AS DOB FROM employees LIMIT 10;
 