DESCRIBE albums;
/* Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint. */
ALTER TABLE albums
ADD UNIQUE (artist,NAME);
DESCRIBE albums;
SELECT * FROM albums;
INSERT INTO albums (artist, NAME, release_year,genre,sales) VALUES('Peter Jackson','Thriller', 1998,'Hard rock', 2610000000);
DESCRIBE albums;

