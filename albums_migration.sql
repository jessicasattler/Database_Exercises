USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist_name TEXT,
	name_name TEXT,
	releasedate_name DATE,
	sales_name FLOAT NOT NULL,
	genre_name TEXT NOT NULL,

	PRIMARY KEY (id)

);