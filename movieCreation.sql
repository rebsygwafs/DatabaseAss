use movie;

CREATE TABLE Actor(
Actor_id				 Integer			NOT NULL,
Actor_fname				 char(20)			NOT NULL,
Actor_lname 			 char(20)			NOT NULL,
Actor_gender			 char(1)			NOT NULL,
CONSTRAINT				 Actor_PK			PRIMARY KEY(Actor_Id)
);

CREATE TABLE Movie(
Mov_id				     Integer   				 NOT NULL,
Mov_title				 char(50)				 NOT NULL,
Mov_year				 Integer				 NOT NULL,
Mov_time				 Integer				 NULL,
Mov_lang				 char(50)				 NOT NULL,
Mov_dt_rel			     date					 NULL,
Mov_rel_country		     char(5)				 NULL,
CONSTRAINT				 Movie_PK				PRIMARY KEY(Mov_id)	

);

CREATE TABLE Director (
Dir_id				Integer					  	  NOT NULL,
Dir_fname           Char(20)				      NOT NULL,
Dir_lname			Char(20)  				      NOT NULL,
CONSTRAINT			Director_PK				      PRIMARY KEY(Dir_id)

);

CREATE TABLE Genres(
Gen_id 					Integer					 NOT NULL,
Gen_title				Char(20)				 NOT NULL,
CONSTRAINT 				Genres_PK				 PRIMARY KEY(Gen_id)
);

CREATE TABLE Reviewer(
Rev_id					Integer					  NOT NULL,
Rev_name				 Char(20)				  NOT NULL,
CONSTRAINT 				 Reviewer_PK			  PRIMARY KEY(Rev_id)
);

CREATE TABLE MOVIE_DIRECTION(

Dir_id					Integer					  NOT NULL,
Mov_id					    Integer					  NOT NULL,

Foreign Key(Dir_id)					References Director(Dir_id),
Foreign Key(mov_id)					References Movie(Mov_id)
);

CREATE TABLE RATING(
Mov_id					Integer					  NOT NULL,
Rev_id					Integer					  NOT NULL,
Rev_stars				Integer				      NOT NULL,
num_of_ratings			Integer				   	  NOT NULL,

foreign Key(mov_id)					 References  Movie(mov_id),
foreign key(Rev_id)					 References  Reviewer(rev_id)
);

CREATE TABLE MOVIE_CAST(
Actor_id					Integer					  NOT NULL,
Mov_id					Integer					  NOT NULL,
Role					Char(30)				  NOT NULL,

foreign key(Actor_id)					 References  Actor(Actor_id),
foreign key(Mov_id)					 References  Movie(Mov_id)

);
CREATE TABLE  MOVIE_GENRES(
Mov_id					Integer					  NOT NULL,
Gen_id					Integer					  NOT NULL,
foreign key(Mov_id)						References  Movie(Mov_id),
foreign key(Gen_id)						References  Genres(Gen_id)
);

select *
from movie

