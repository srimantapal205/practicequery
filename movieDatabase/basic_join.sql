SELECT * FROM movie_basic;
SELECT titles.title, studio.city FROM titles INNER JOIN studio ON titles.studio_id = studio.id ORDER BY titles.title;
SELECT director.dir_name, titles.title, critic_rating.critics_rating FROM titles INNER JOIN director ON titles.director_id= director.id JOIN critic_rating ON critic_rating.titles_id = titles.id 
ORDER BY director.dir_name;

CREATE TABLE posters
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
titles_id INT,
filename VARCHAR(30),
resolution VARCHAR(10),
CONSTRAINT poster_titles_id_fk
FOREIGN KEY (titles_id) REFERENCES titles (id)
)

SELECT titles.title, director.dir_name, posters.filename,posters.resolution FROM titles INNER JOIN director ON titles.director_id = director.id LEFT OUTER JOIN posters 
ON posters.titles_id = titles.id ORDER BY titles.title;

SELECT titles.title, director.dir_name, posters.filename,posters.resolution FROM titles INNER JOIN director ON titles.director_id = director.id INNER JOIN posters 
ON posters.titles_id = titles.id ORDER BY titles.title;

SELECT titles.title, director.dir_name, posters.filename,posters.resolution FROM titles INNER JOIN director ON titles.director_id = director.id RIGHT OUTER JOIN posters 
ON posters.titles_id = titles.id ORDER BY titles.title;

/*Challange Question*/

SELECT titles.title, director.dir_name, critic_rating.critics_rating,posters.filename
FROM titles
JOIN director
ON titles.director_id=director.id
JOIN critic_rating
ON critic_rating.titles_id=titles.id
LEFT JOIN posters 
ON titles.id = posters.titles_id
ORDER BY critic_rating.critics_rating DESC
LIMIT 1;




