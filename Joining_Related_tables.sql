/* Created a table containing actors name */
CREATE TABLE actors(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO actors (fullname, age) VALUES ("Mark Hamill", "72");
INSERT INTO actors (fullname, age) VALUES ("Harrison Ford", "81");
INSERT INTO actors (fullname, age) VALUES ("Robert Downey Jr.", "58");
INSERT INTO actors (fullname, age) VALUES ("Chris Evans", "42");
INSERT INTO actors (fullname, age) VALUES ("Elizabeth Olsen", "34");

/* Created a table with movies */
CREATE table movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO movies (person_id, name) VALUES (1, "The Machine");
INSERT INTO movies (person_id, name) VALUES (1, "Star Wars");
INSERT INTO movies (person_id, name) VALUES (2, "Indiana Jones");
INSERT INTO movies (person_id, name) VALUES (2, "Air Force One");
INSERT INTO movies (person_id, name) VALUES (3, "Sherlock Holmes ");
INSERT INTO movies (person_id, name) VALUES (3, "Tropic Thunder");
INSERT INTO movies (person_id, name) VALUES (3, "Ironman");
INSERT INTO movies (person_id, name) VALUES (5, "Godzilla");
INSERT INTO movies (person_id, name) VALUES (5, "Wind River");

/* quick check to see output of both tables  */
SELECT * FROM movies;
SELECT * FROM actors;


/* Did a join between movies and actors  */

Select fullname as Leading_Actor, name 
From movies as m
join actors as a
on m.person_id = a.id
