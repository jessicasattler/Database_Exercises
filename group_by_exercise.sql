/* In your script, use DISTINCT to find the unique titles in the titles table. */
SELECT DISTINCT title FROM titles;
/* or */
SELECT title FROM titles GROUP BY title;
/* Update the previous query to sort the results alphabetically. */
SELECT DISTINCT title FROM titles GROUP BY title ASC;
/* Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY */
/* employees whose last name starts and ends with 'E' */
SELECT last_name FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E' GROUP BY last_name;
/* UPDATE your previous QUERY TO now find UNIQUE combinations of FIRST AND LAST NAME WHERE the LAST NAME STARTS AND ENDS WITH 'E' */
SELECT last_name FROM employees WHERE last_name LIKE 'E%'AND last_name LIKE '%E' GROUP BY first_name, last_name;
/* Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY */
SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

