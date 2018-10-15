DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Rabah	Meliani');
	INSERT INTO people (name) VALUES ('Robert Baker');
	INSERT INTO people (name) VALUES ('Louise Meney');
	INSERT INTO people (name) VALUES ('Stewart Cowan');
	INSERT INTO people (name) VALUES ('Colin Bell');
	INSERT INTO people (name) VALUES ('Alex McIntosh');
	INSERT INTO people (name) VALUES ('Steven McAndrew');
	INSERT INTO people (name) VALUES ('Michael Allen');
	INSERT INTO people (name) VALUES ('Robin	Hughes');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:55');
	INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '21:40');
	INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '21:15');
	INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '18:30');
	INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '12:00');
	INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '22:55');
	INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '14:05');
	INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '20:40');
	INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '14:05');
	INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
	INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '14:25');
	INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '12:45');
	INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '23:05');
	INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '17:40');
	INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '21:45');
	INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '21:45');
	INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '12:25');
	INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '23:20');
	INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '15:05');

SELECT * FROM movies;

SELECT name FROM people;

UPDATE people SET name = 'Michael Allan' WHERE name = 'Michael Allen';

SELECT name FROM people;

SELECT name FROM people WHERE name = 'Robert Baker';

DELETE FROM movies WHERE title = 'Batman Begins';

SELECT * FROM movies;

INSERT INTO people (name) VALUES ('Upul Dissanayaka');

SELECT * FROM people;

DELETE FROM people WHERE name = 'Colin Bell';

SELECT * FROM people;

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

SELECT * FROM movies;

SELECT title, show_time FROM movies WHERE title = 'Guardians of the Galaxy';

UPDATE movies SET show_time = '16:25' WHERE title = 'Guardians of the Galaxy 2';

SELECT title, show_time FROM movies WHERE title IN('Guardians of the Galaxy', 'Guardians of the Galaxy 2');

DELETE FROM movies WHERE title IN ('Black Panther', 'Avengers Assemble');

SELECT * FROM movies;

DELETE FROM movies WHERE title LIKE 'Guardians%';

SELECT * FROM movies;

DELETE FROM movies WHERE title LIKE 'Iron Man _';

SELECT * FROM movies;

DELETE FROM movies WHERE title LIKE 'Th___%';

SELECT * FROM movies;

DELETE FROM movies WHERE title LIKE '%America%';

SELECT * FROM movies;
