create table directors ( director_id int primary key,
                         director_name varchar(100) not null,
                         birth_year int,
                         nationality varchar(50));

create table movies (movie_id int primary key,
                     director_id int,
                     movie_name varchar(50),
                     release_date date,
                     user_rating decimal(3,1),
                     movie_status varchar(50),
                     duration int,
                     foreign key (director_id) references directors(director_id));
                     
alter table movies 
change column duration duration_min int;
                     
create table genres (
  genre_id int primary key,
  genre_name varchar(50)
);

create table movie_genres (
  movie_id int,
  genre_id int,
  primary key (movie_id, genre_id),
  foreign key (movie_id) references movies(movie_id),
  foreign key (genre_id) references genres(genre_id)
);

create table countries (
  country_id int primary key,
  country_name varchar(50)
);

create table movie_countries (
  movie_id int,
  country_id int,
  primary key (movie_id, country_id),
  foreign key (movie_id) references movies(movie_id),
  foreign key (country_id) references countries(country_id)
);


