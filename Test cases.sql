-- 1. check movies with invalid director_id (should be zero rows)
select movie_id from movies where director_id not in (select director_id from directors);

-- 2. check duplicate primary keys in directors (should be zero rows)
select director_id, count(*) from directors group by director_id having count(*) > 1;

-- 3. check movies with negative or zero duration (should be zero rows)
select movie_id, duration_min from movies where duration_min <= 0;

-- 4. check genres linked to movies that do not exist
select mg.movie_id from movie_genres mg where mg.movie_id not in (select movie_id from movies);

-- 5. check countries linked to movies that do not exist
select mc.movie_id from movie_countries mc where mc.movie_id not in (select movie_id from movies);

-- 6. validate average rating for directors with <= 2 movies is not null
select d.director_id, avg(m.user_rating)
from directors d
join movies m on d.director_id = m.director_id
group by d.director_id
having count(m.movie_id) <= 2 and avg(m.user_rating) is null;
