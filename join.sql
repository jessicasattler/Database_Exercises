CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

SHOW TABLES;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

SHOW TABLES;


INSERT INTO roles (NAME) VALUES ('admin');
INSERT INTO roles (NAME) VALUES ('author');
INSERT INTO roles (NAME) VALUES ('reviewer');
INSERT INTO roles (NAME) VALUES ('commenter');

INSERT INTO users (NAME, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', NULL),
('mike', 'mike@example.com', NULL);

DESCRIBE roles;
DESCRIBE users;

SELECT * FROM roles;
SELECT * FROM users;

/* Insert 4 new users into the database. One should have a NULL role. The other three should be authors. */
INSERT INTO users(NAME, email, role_id)VALUES
('lola','lola@example.com',2),
('brian','brian@example.com',2),
('whitney','whitney@example.com',2),
('sam','sam@example.com',2);

SELECT * FROM users;

/* Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results. */
/* Join */
SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;
/* LEFT Join- we will get all users returned regardless of whether they have a role */
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;
/* RIGHT JOIN - we will get all the roles regardless of whether there's a user with that role */
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;
SELECT * FROM users;
/*  Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query. */
SELECT  users.name AS user_name , roles.name AS role_name, COUNT (roles)
FROM roles
LEFTT JOIN users ON  roles.id = users.role_id GROUP BY roles.name;

SELECT * FROM roles;
SELECT * FROM users;



