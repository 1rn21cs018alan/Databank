
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


select title,star
from Movie M,Rating R
where M.Mid=R.Mid and R.star in(
	select max(R1.star)
	from Rating R1
	where M.Mid=R1.Mid)
order by title;

#4. List all actors who acted in a movie before 2000 
#   and also in a movie after 2015 (use JOIN operation).

Select Distinct(Aname) from 
(actor A natural join (movie_cast M1 natural join movie M2 ))
where year<2000 or year>2015; 

#5. Update rating of all movies directed by ‘Steven Spielberg’ to 5.

update rating set star=5 
where Mid in 
	(select M.Mid 
    from movie M,director D 
    where M.Did=D.Did and D.Dname="Steven Spielberg");
