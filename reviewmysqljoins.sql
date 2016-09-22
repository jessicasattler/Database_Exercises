foreign key is a special type of
 column in one of our tables that references another 
 table, a foreign table, usingn foreign keys we can write foreign statements to
  join tables 


  schema: the way the database is layed out
  aggregate function: count, avg, etc - aggregate results unless stopped by a group by 
  foreign key : a column that regerences a key in another table
  schema: the way the database is layed out

  We want to avoid any redundant data duplication
  How to relate posts to categories?

  posts		
  id	name		
  1		I sure like JS!
  2     PHP is pretty cool
  3		MySQL is awesome!
  4     I love databases!

  categories
  id	name
  1		databases
  2		javascript
  3		php
  4		mysql 

  One to many and many to one relationships

  SELECT * FROM posts AS p JOIN categories AS c on p.category_id = c.id

  Query results
  p.id       p.name      	p.category_id   c.id   c.name
  1			I sure like JS!    2			2		javascript
  2			PHP is pretty cool 3            3       php 
  3         MySQL is awesome!  1            1       databases
  4         I love databases!  1            1       databases 

  What is a post has more than one category?

In mysql, an associative table is the same as a pivot table in excel 
(2 columns table that relates one table to another)


Like dept_emp in employees database 

category_post
post_id   category_id
1			2
2			3
3			1
3			4
4
4



