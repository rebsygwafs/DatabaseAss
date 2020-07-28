select*
from movie;

select mov_title, mov_year
from movie
where mov_title = 'American Beauty';

Select mov_title,mov_year
from movie
where mov_year = '1999';


Select mov_title,mov_year
from movie
where mov_year = 'before 1998';


Select rev_name, mov_title
from  reviewer,movie
where rev_name = mov_title;


Select rev_name, rev_stars
from  reviewer,rating
where rev_stars = '7 or more';

Select rev_stars, mov_title
from  movie,rating
where mov_title = 'no rating';

Select rev_name, num_of_rating
from  reviewer join rating
where num_of_rating = 'NULL';

select mov_title,dir_fname,dir_lname
from movie,director
where mov_title = 'Eye not Shut';