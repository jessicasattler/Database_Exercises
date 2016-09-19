USE codeup_test_db;
-- select all albums in your table
SELECT name FROM albums;
-- all albums released before 1980
SELECT name FROM albums WHERE release_year < 1980;
-- All albums by Michael Jackson
SELECT name FROM albums WHERE artist = 'Michael Jackson';
-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums 
SET sales = sales * 10;
SELECT sales FROM albums;
-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_year = release_year - 100
WHERE release_year < 1980;
SELECT release_year FROM albums WHERE release_year < 1980;
-- Change "Michael Jackson" to "Peter Jackson"
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';