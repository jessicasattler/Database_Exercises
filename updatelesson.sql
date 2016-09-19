-- u in CRUD 

--update syntax
UPDATE table
SET col1 = 'val1', col2, = 'val2';

UPDATE albums
SET genre = 'not metal'
WHERE id = 31;

SELECT * FROM albums\G

--typically it is best to do the select first and then update-- 
