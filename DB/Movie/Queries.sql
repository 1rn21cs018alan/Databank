
#1. List the titles of all movies directed by ‘Hitchcock’.

select title
from Movie M, Director D
where M.Did=D.Did and Dname="Hitchcock";

#2. Find the movie names where one or more actors acted in two or more movies.

select title
from Movie M1,Movie_Cast M2
where M1.Mid=M2.Mid and M2.Aid in( 
	select M3.Aid
	from Movie_Cast M3
	group by M3.Aid
	having count(M3.Aid)>1
);

#3. Find the title of movies and number of stars for each movie that has 
#	at least one rating and find the highest number of stars that movie received. 
#	Sort the result by movie title.
