ALTER TABLE titles
ADD CONSTRAINT genre_id_fk
FOREIGN KEY (genre_id)
REFERENCES genre (id),

ADD CONSTRAINT director_id_fk
FOREIGN KEY (director_id)
REFERENCES director (id), 

ADD CONSTRAINT studio_id_fk
FOREIGN KEY(studio_id)
REFERENCES studio (id);

ALTER TABLE critic_rating
ADD CONSTRAINT titles_id_fk
FOREIGN KEY (titles_id)
REFERENCES titles (id);