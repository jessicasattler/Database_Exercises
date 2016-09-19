USE codeup_test_db;

SELECT 'Here are all the quotes' as 'info';


SELECT * FROM quotes\G

--select where '=', '!=', '<', '>=','BETWEEN x AND y'
SELECT col1, col2, FROM table
WHERE condition;

SELECT * FROM quotes WHERE id = 1\G; 

SELECT * FROM quotes
WHERE id > 2\G

SELECT * FROM quotes
WHERE id BETWEEN 2 AND 4\G

SELECT * FROM quotes
WHERE author_last_name = 'Adams'\G



