USE codeup_test_db;

-- Write Select Statements for 
-- Albums released after 1991
DELETE FROM albums WHERE release_year > 1991;
-- Albums with the genre disco
DELETE FROM albums WHERE genre = 'disco';
-- Albums by Whitney Houston  
DELETE FROM albums WHERE artist = 'Whitney Houston / Various artists';
