-- Movies with a user rating of more than 8.0, newwest first --
select movie_name, user_rating, release_date
from movies 
where user_rating > 8.0
order by release_date desc;

-- Longest movies (duration >= 150 min) --
select m.movie_name, d.director_name
from movies as m
join directors as d
on m.director_id = d.director_id
where duration_min >= 150;

-- Movies released outside the US --
select m.movie_name, c.country_name
from countries as c
join movie_countries as mc
join movies as m on mc.movie_id = m.movie_id
on c.country_id = mc.country_id
where c.country_id not like '%1%';

-- Directors with no movies rated below 6.0 --
select m.user_rating, m.movie_name, d.director_name
from movies as m
join directors as d
on m.director_id = d.director_id
where m.user_rating > 6.0
group by m.user_rating, m.movie_name, d.director_name;

-- Directors average movie rating (only those with less than or equal to 2 movies --
select d.director_name, d.director_id, count(*) as film_count, round(avg(m.user_rating),2) as avg_rating
from movies as m
join directors as d 
on m.director_id = d.director_id
group by d.director_id, d.director_name
having count(*) <= 2
order by avg_rating desc;                      

-- Directors who made more than 3 movies --
select d.director_name, count(*) as movie_count
from directors as d
join movies as m 
     on d.director_id = m.director_id
group by d.director_id, d.director_name
having count(*) >= 2;

-- Genres that have atleast 5 movies --
select g.genre_name, count(*) as count_movies 
from genres as g
join movie_genres as mg
    on g.genre_id = mg.genre_id
group by g.genre_name
having count(*) >=5;

-- Countries that made more than 3 movies --
select c.country_name, count(*) as count_country
from countries as c
join movie_countries as mc
     on c.country_id = mc.country_id
group by c.country_name 
having count(*)>3;
    
-- Directors whose average movie rating is above 7.0 and who have directed at least 2 movies --
select d.director_name, round(avg(m.user_rating),2) as avg_rating, count(*) as count_directors
from directors as d
join movies as m
     on d.director_id = m.director_id
group by d.director_name
having count(*) >= 2
       and avg(m.user_rating)>7.0;
       
-- Genres that have an average movie rating greater than 6.5 and have at least 3 movies--
select g.genre_name, round(avg(m.user_rating), 2) as avg_rating, count(m.movie_id) as movie_count
from genres as g
join movie_genres as mg
     on g.genre_id = mg.genre_id
join movies as m
     on mg.movie_id = m.movie_id
group by g.genre_name
having avg(m.user_rating) > 6.5
	  and count(m.movie_id) >= 3;



