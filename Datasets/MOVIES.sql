CREATE TABLE titles
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
title VARCHAR(100),
genre_id INT,
release_year SMALLINT,
director_id INT,
studio_id INT);

CREATE TABLE genre
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
genre VARCHAR(25));


CREATE TABLE director
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
director VARCHAR(40));

CREATE TABLE studio
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
studio_name VARCHAR(30),
city VARCHAR(20));

CREATE TABLE critic_rating
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
titles_id INT,
critics_rating DECIMAL(2,1));



ALTER TABLE titles
ADD CONSTRAINT genre_id_fk
FOREIGN KEY (genre_id)
REFERENCES genre(id),

ADD CONSTRAINT director_id_fk
FOREIGN KEY (director_id)
REFERENCES director(id),

ADD CONSTRAINT studio_id_fk
FOREIGN KEY (studio_id)
REFERENCES studio(id);

ALTER TABLE critics_rating
ADD CONSTRAINT titles_id_fk
FOREIGN KEY (titles_id)
REFERENCES titles(id);
