/* Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results. */
SELECT * FROM users;
SELECT * FROM roles;
/* JOIN */
SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;
/* left JOIN  */
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;
 
/* RIGHT JOIN */
 SELECT users.name AS user_name, roles.name AS role_name
 FROM users
 RIGHT JOIN roles ON users.role_id = roles.id;
 
/*  Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query */
SELECT roles.name, COUNT(*)
FROM users 
LEFT JOIN roles ON users.role_id = roles.id GROUP BY role_id ORDER BY role_id DESC; 


 
 