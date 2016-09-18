USE codeup_test_db;


-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released (Note: MySQL also supports a YEAR data type!)
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`artist` VARCHAR(100) NOT NULL,
	`name` VARCHAR(100) NOT NULL,
	`release_date` INT UNSIGNED NOT NULL,
	`genre_name` VARCHAR(100) NOT NULL,
	`sales_name` FLOAT NOT NULL,

	PRIMARY KEY (id)

);