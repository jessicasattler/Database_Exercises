USE codeup_test_db;

--The name of all albums by Pink Floyd--
SELECT name FROM albums WHERE artist = 'Pink Floyd';
--The year Meat Loaf's Bat Out of Hell was released--
SELECT release_date FROM albums WHERE name = 'Bat Out Of Hell';
--The genre for AC/DC--
SELECT genre_name FROM albums WHERE artist = 'AC/DC';
--Which albums were released in the 1990s--
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
--Which albums had less than 20 million certified sales--
SELECT name FROM albums WHERE sales_name < 20;
--All the albums in the rock genre. Is this all the rock albums in the table?--
SELECT * FROM albums;