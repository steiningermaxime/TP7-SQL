1)
SELECT title, releaseYear
FROM Movie
ORDER BY releaseYear DESC;

2)
SELECT firstName, lastName, YEAR(CURDATE()) - YEAR(birthDate) AS age
FROM Actor
WHERE YEAR(CURDATE()) - YEAR(birthDate) > 30
ORDER BY lastName, firstName;

3)
SELECT a.firstName, a.lastName
FROM Actor a
JOIN Plays p ON a.id_Actor = p.id_Actor
WHERE p.id_Movie = 1 AND p.role = 'Principal'
ORDER BY a.lastName, a.firstName;

4) 
SELECT m.title, m.releaseYear
FROM Movie m
JOIN Plays p ON m.id_Movie = p.id_Movie
WHERE p.id_Actor = 1
ORDER BY m.releaseYear DESC;

5)
INSERT INTO Movie (id_Movie, title, duration, releaseYear, id_Director)
VALUES (1, 'Star wars la revanche des siths', 2, 2005, 1);

6)
INSERT INTO Actor (id_Actor, lastName, firstName, birthDate)
VALUES (1, 'Portman', 'Nathalie', '1965-04-13');

7)
UPDATE Movie
SET title = 'Star wars 9', duration = 3, releaseYear = 2020, id_Director = 2
WHERE id_Movie = 1;

8)
DELETE FROM Actor
WHERE id_Actor = 1;

9)
SELECT * FROM Actor
ORDER BY id_Actor DESC
LIMIT 3;

10)
SELECT * FROM Movie
ORDER BY releaseYear ASC
LIMIT 1;

11)
SELECT * FROM Actor
ORDER BY birthDate DESC
LIMIT 1;

12)
SELECT COUNT(*) FROM Movie
WHERE releaseYear = 1990;

13)
SELECT COUNT(DISTINCT id_Actor) FROM Plays;


