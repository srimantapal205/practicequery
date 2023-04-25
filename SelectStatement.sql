SELECT * FROM movies.movie_basic;
SELECT title, gener FROM movie_basic;
SELECT * FROM movie_basic LIMIT 4,5;
SELECT DISTINCT gener FROM movie_basic;
SELECT title AS 'TITLE', gener AS 'GENER', release_year AS 'Release Year' FROM movie_basic;
SELECT * FROM movie_basic ORDER BY gener, release_year;

/* Where clause and Wildcart charecters and Logical operators use: */
SELECT * FROM movie_basic WHERE critic_rating >3 AND critic_rating < 5 ;
SELECT * FROM movie_basic WHERE gener LIKE 'Children';
SELECT * FROM movie_basic WHERE studio LIKE 'Studio%';
SELECT * FROM movie_basic WHERE release_year LIKE '191_';
SELECT * FROM movie_basic WHERE release_year <> 1980;
SELECT * FROM movie_basic WHERE gener LIKE 'Drama' AND critic_rating >6;
SELECT * FROM movie_basic WHERE gener LIKE 'Drama' OR critic_rating >6;
SELECT COUNT(*) AS RowCount FROM movie_basic WHERE gener LIKE 'Drama' OR critic_rating >6;
SELECT * FROM movie_basic WHERE gener LIKE 'Drama' OR critic_rating >6 ORDER BY critic_rating ASC;

SELECT title, critic_rating, IF(critic_rating > 6, 'Good', 'Bad') AS "Critic Status" FROM movie_basic;
SELECT title AS 'Title', critic_rating AS 'Rating', 
CASE
	WHEN critic_rating<5 THEN 'BAD'
    WHEN critic_rating<8 THEN 'Decent'
    ELSE 'Good'
END AS 'Critic Status' FROM movie_basic;

/*Challange Query*/
SELECT title AS 'Title:', IF(release_year>=2000, '21st Century','20th Century') AS 'Released:', director AS 'Director:',
CASE
	WHEN critic_rating <= 5 THEN 'BAD'
    WHEN critic_rating >5 AND critic_rating <= 7 THEN 'Decent'
    WHEN critic_rating >7 AND critic_rating <=8.9 THEN 'Good'
    ELSE 'Amazing'
END AS 'Reviews:' FROM movie_basic ORDER BY title DESC;



