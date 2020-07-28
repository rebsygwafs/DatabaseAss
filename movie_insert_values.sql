
use movie;

-- Actor data
INSERT INTO ACTOR VALUES(
'001','Pat', 'Godwin','M');
INSERT INTO ACTOR VALUES(
'002','Alice', 'Map','F');
INSERT INTO ACTOR VALUES(
'003', 'Doe', ' Matt','M');
INSERT INTO ACTOR VALUES(
'004', 'Eunice', 'Gad','F');

INSERT INTO GENRES VALUES(
'001','Drama');
INSERT INTO GENRES VALUES(
'002','Action');
INSERT INTO GENRES VALUES(
'003', 'Comedy');

INSERT INTO MOVIE VALUES(
'001','The hunter','1998',NULL,'English',NULL,NULL);
INSERT INTO MOVIE VALUES(
'002','Eye not shut','1999', NULL,'English',NULL,NULL);
INSERT INTO MOVIE VALUES(
'003','Game','1998', NULL,'French',NULL,NULL);
INSERT INTO MOVIE VALUES(
'004','American Beauty','1999',NULL,'English',NULL,NULL);

 -- Director data
INSERT INTO DIRECTOR VALUES(
'001','Zeph', 'Leo');
INSERT INTO DIRECTOR VALUES(
'002','Matt', 'Lord');
INSERT INTO DIRECTOR VALUES(
'003','Nathan', 'Nathan');

-- Genres data
INSERT INTO GENRES VALUES(
'001','Drama');
INSERT INTO GENRES VALUES(
'002','Action');
INSERT INTO GENRES VALUES(
'003','Comedy');


-- Reviewer data
INSERT INTO REVIEWER VALUES(
'001','Justin Lake');
INSERT INTO REVIEWER VALUES(
'002','Gladys Moore');

-- Ratings data
INSERT INTO RATINGS VALUES(
'10','8');
INSERT INTO RATINGS VALUES(
'12','10');

-- Movie_cast(
INSERT INTO MOVIE_CAST VALUES(
'The victim');
INSERT INTO MOVIE_CAST VALUES(
'Father of the victim');
INSERT INTO MOVIE_CAST VALUES(
'Police officer');
INSERT INTO MOVIE_CAST VALUES(
'Wife of the victim');


select  mov_title, mov_year
from movie
where mov_title = mov_year