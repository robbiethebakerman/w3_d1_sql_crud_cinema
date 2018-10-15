# SQL Homework

The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1.  Return ALL the data in the 'movies' table.

SELECT * FROM movies;

    id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
     1 | Iron Man                            | 2008 | 17:55
     2 | The Incredible Hulk                 | 2008 | 21:40
     3 | Iron Man 2                          | 2010 | 21:15
     4 | Thor                                | 2011 | 18:30
     5 | Captain America: The First Avenger  | 2011 | 12:00
     6 | Avengers Assemble                   | 2012 | 22:55
     7 | Iron Man 3                          | 2013 | 14:05
     8 | Thor: The Dark World                | 2013 | 20:40
     9 | Batman Begins                       | 2005 | 14:05
    10 | Captain America: The Winter Soldier | 2014 | 15:30
    11 | Guardians of the Galaxy             | 2014 | 14:25
    12 | Avengers: Age of Ultron             | 2015 | 12:45
    13 | Ant-Man                             | 2015 | 23:05
    14 | Captain America: Civil War          | 2016 | 17:40
    15 | Doctor Strange                      | 2016 | 21:45
    16 | Guardians of the Galaxy 2           | 2017 | 21:45
    17 | Spider-Man: Homecoming              | 2017 | 12:25
    18 | Thor: Ragnarok                      | 2017 | 23:20
    19 | Black Panther                       | 2018 | 15:05
    (19 rows)

2.  Return ONLY the name column from the 'people' table

SELECT name FROM people;

    name       
    -----------------
    Rabah   Meliani
    Robert Baker
    Louise Meney
    Stewart Cowan
    Colin Bell
    Alex McIntosh
    Steven McAndrew
    Michael Allen
    Robin   Hughes
    (9 rows)

3.  Oops! Someone at CodeClan spelled Michael's name wrong! Change it to reflect the proper spelling ('Michael Allen' should be 'Michael Allan').

UPDATE people SET name = 'Michael Allan' WHERE name = 'Michael Allen';

SELECT name FROM people;

    UPDATE 1
          name       
    -----------------
     Rabah   Meliani
     Robert Baker
     Louise Meney
     Stewart Cowan
     Colin Bell
     Alex McIntosh
     Steven McAndrew
     Robin   Hughes
     Michael Allan
    (9 rows)

4.  Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Robert Baker';

    name     
    --------------
    Robert Baker
    (1 row)

5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

SELECT * FROM movies;

    DELETE 1
     id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
      1 | Iron Man                            | 2008 | 17:55
      2 | The Incredible Hulk                 | 2008 | 21:40
      3 | Iron Man 2                          | 2010 | 21:15
      4 | Thor                                | 2011 | 18:30
      5 | Captain America: The First Avenger  | 2011 | 12:00
      6 | Avengers Assemble                   | 2012 | 22:55
      7 | Iron Man 3                          | 2013 | 14:05
      8 | Thor: The Dark World                | 2013 | 20:40
     10 | Captain America: The Winter Soldier | 2014 | 15:30
     11 | Guardians of the Galaxy             | 2014 | 14:25
     12 | Avengers: Age of Ultron             | 2015 | 12:45
     13 | Ant-Man                             | 2015 | 23:05
     14 | Captain America: Civil War          | 2016 | 17:40
     15 | Doctor Strange                      | 2016 | 21:45
     16 | Guardians of the Galaxy 2           | 2017 | 21:45
     17 | Spider-Man: Homecoming              | 2017 | 12:25
     18 | Thor: Ragnarok                      | 2017 | 23:20
     19 | Black Panther                       | 2018 | 15:05
    (18 rows)

6.  Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Upul Dissanayaka');

SELECT * FROM people;

    INSERT 0 1
     id |       name       
    ----+------------------
      1 | Rabah   Meliani
      2 | Robert Baker
      3 | Louise Meney
      4 | Stewart Cowan
      5 | Colin Bell
      6 | Alex McIntosh
      7 | Steven McAndrew
      9 | Robin   Hughes
      8 | Michael Allan
     10 | Upul Dissanayaka
    (10 rows)

7.  Colin Bell has decided to hijack our movie evening. Remove him from the table of people.

DELETE FROM people WHERE name = 'Colin Bell';

SELECT * FROM people;

    DELETE 1
     id |       name       
    ----+------------------
      1 | Rabah   Meliani
      2 | Robert Baker
      3 | Louise Meney
      4 | Stewart Cowan
      6 | Alex McIntosh
      7 | Steven McAndrew
      9 | Robin   Hughes
      8 | Michael Allan
     10 | Upul Dissanayaka
    (9 rows)

8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

SELECT * FROM movies;

    INSERT 0 1
     id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
      1 | Iron Man                            | 2008 | 17:55
      2 | The Incredible Hulk                 | 2008 | 21:40
      3 | Iron Man 2                          | 2010 | 21:15
      4 | Thor                                | 2011 | 18:30
      5 | Captain America: The First Avenger  | 2011 | 12:00
      6 | Avengers Assemble                   | 2012 | 22:55
      7 | Iron Man 3                          | 2013 | 14:05
      8 | Thor: The Dark World                | 2013 | 20:40
     10 | Captain America: The Winter Soldier | 2014 | 15:30
     11 | Guardians of the Galaxy             | 2014 | 14:25
     12 | Avengers: Age of Ultron             | 2015 | 12:45
     13 | Ant-Man                             | 2015 | 23:05
     14 | Captain America: Civil War          | 2016 | 17:40
     15 | Doctor Strange                      | 2016 | 21:45
     16 | Guardians of the Galaxy 2           | 2017 | 21:45
     17 | Spider-Man: Homecoming              | 2017 | 12:25
     18 | Thor: Ragnarok                      | 2017 | 23:20
     19 | Black Panther                       | 2018 | 15:05
     20 | Avengers: Infinity War              | 2018 | 00:00
    (19 rows)

9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

SELECT title, show_time FROM movies WHERE title = 'Guardians of the Galaxy';

UPDATE movies SET show_time = '16:25' WHERE title = 'Guardians of the Galaxy 2';

SELECT title, show_time FROM movies WHERE title IN('Guardians of the Galaxy', 'Guardians of the Galaxy 2');

    title          | show_time
    -------------------------+-----------
    Guardians of the Galaxy | 14:25
    (1 row)

    UPDATE 1
     title           | show_time
    ---------------------------+-----------
    Guardians of the Galaxy   | 14:25
    Guardians of the Galaxy 2 | 16:25
    (2 rows)

## Extension

1.  Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE title IN ('Black Panther', 'Avengers Assemble');

SELECT * FROM movies;

    DELETE 2
     id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
      1 | Iron Man                            | 2008 | 17:55
      2 | The Incredible Hulk                 | 2008 | 21:40
      3 | Iron Man 2                          | 2010 | 21:15
      4 | Thor                                | 2011 | 18:30
      5 | Captain America: The First Avenger  | 2011 | 12:00
      7 | Iron Man 3                          | 2013 | 14:05
      8 | Thor: The Dark World                | 2013 | 20:40
     10 | Captain America: The Winter Soldier | 2014 | 15:30
     11 | Guardians of the Galaxy             | 2014 | 14:25
     12 | Avengers: Age of Ultron             | 2015 | 12:45
     13 | Ant-Man                             | 2015 | 23:05
     14 | Captain America: Civil War          | 2016 | 17:40
     15 | Doctor Strange                      | 2016 | 21:45
     17 | Spider-Man: Homecoming              | 2017 | 12:25
     18 | Thor: Ragnarok                      | 2017 | 23:20
     20 | Avengers: Infinity War              | 2018 | 00:00
     16 | Guardians of the Galaxy 2           | 2017 | 16:25
    (17 rows)

DELETE FROM movies WHERE title LIKE 'Guardians%';

SELECT * FROM movies;

    DELETE 2
     id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
      1 | Iron Man                            | 2008 | 17:55
      2 | The Incredible Hulk                 | 2008 | 21:40
      3 | Iron Man 2                          | 2010 | 21:15
      4 | Thor                                | 2011 | 18:30
      5 | Captain America: The First Avenger  | 2011 | 12:00
      7 | Iron Man 3                          | 2013 | 14:05
      8 | Thor: The Dark World                | 2013 | 20:40
     10 | Captain America: The Winter Soldier | 2014 | 15:30
     12 | Avengers: Age of Ultron             | 2015 | 12:45
     13 | Ant-Man                             | 2015 | 23:05
     14 | Captain America: Civil War          | 2016 | 17:40
     15 | Doctor Strange                      | 2016 | 21:45
     17 | Spider-Man: Homecoming              | 2017 | 12:25
     18 | Thor: Ragnarok                      | 2017 | 23:20
     20 | Avengers: Infinity War              | 2018 | 00:00
    (15 rows)

<!-- DELETE FROM movies WHERE title LIKE 'Iron Man _';

SELECT * FROM movies; -->

    DELETE 2
     id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
      1 | Iron Man                            | 2008 | 17:55
      2 | The Incredible Hulk                 | 2008 | 21:40
      4 | Thor                                | 2011 | 18:30
      5 | Captain America: The First Avenger  | 2011 | 12:00
      8 | Thor: The Dark World                | 2013 | 20:40
     10 | Captain America: The Winter Soldier | 2014 | 15:30
     12 | Avengers: Age of Ultron             | 2015 | 12:45
     13 | Ant-Man                             | 2015 | 23:05
     14 | Captain America: Civil War          | 2016 | 17:40
     15 | Doctor Strange                      | 2016 | 21:45
     17 | Spider-Man: Homecoming              | 2017 | 12:25
     18 | Thor: Ragnarok                      | 2017 | 23:20
     20 | Avengers: Infinity War              | 2018 | 00:00
    (13 rows)

DELETE FROM movies WHERE title LIKE 'Th___%';

SELECT * FROM movies;

    DELETE 3
     id |                title                | year | show_time
    ----+-------------------------------------+------+-----------
      1 | Iron Man                            | 2008 | 17:55
      4 | Thor                                | 2011 | 18:30
      5 | Captain America: The First Avenger  | 2011 | 12:00
     10 | Captain America: The Winter Soldier | 2014 | 15:30
     12 | Avengers: Age of Ultron             | 2015 | 12:45
     13 | Ant-Man                             | 2015 | 23:05
     14 | Captain America: Civil War          | 2016 | 17:40
     15 | Doctor Strange                      | 2016 | 21:45
     17 | Spider-Man: Homecoming              | 2017 | 12:25
     20 | Avengers: Infinity War              | 2018 | 00:00
    (10 rows)

DELETE FROM movies WHERE title LIKE '%America%';

SELECT * FROM movies;

    DELETE 3
     id |          title          | year | show_time
    ----+-------------------------+------+-----------
      1 | Iron Man                | 2008 | 17:55
      4 | Thor                    | 2011 | 18:30
     12 | Avengers: Age of Ultron | 2015 | 12:45
     13 | Ant-Man                 | 2015 | 23:05
     15 | Doctor Strange          | 2016 | 21:45
     17 | Spider-Man: Homecoming  | 2017 | 12:25
     20 | Avengers: Infinity War  | 2018 | 00:00
    (7 rows)
