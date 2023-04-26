SELECT * FROM movies.movie_basic;
SELECT * FROM movie_basic WHERE director='Miley Watson';
UPDATE movie_basic SET director = 'Mike Watson' WHERE director = 'Miley Watson';
SELECT * FROM movies.movie_basic WHERE director = 'Mike Watson';

/*Delete statement*/
SELECT * FROM movie_basic WHERE release_year<1915;
DELETE FROM movie_basic WHERE release_year<1915;
SELECT * FROM movies.movie_basic ORDER BY release_year;

/*Coding Challange*/
SELECT * FROM movie_basic;
INSERT INTO movie_basic
(title, gener, release_year, director, studio, critic_rating)
VALUES
('Run for the forest','Drama','1946','Rence Pera','Lionel Brownstone','7.3'),
('Luck of the Night','Drama','1951','Rence Pera','Lionel Brownstone','6.8'),
('Invador Flory','Adventure','1953','Rence Pera','Lionel Brownstone','5.5');

UPDATE movie_basic SET gener ='SF' WHERE gener='Sci-Fi';
SELECT * FROM movie_basic WHERE gener ='SF';

SELECT * FROM movie_basic WHERE director = 'Garry Scott' AND studio='Lionel Brownstone';
DELETE FROM movie_basic  WHERE director = 'Garry Scott' AND studio='Lionel Brownstone'