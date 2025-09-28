# CineInsightsDB - Data Analysis 

## Short description:
This project contains a relational database schema and sample data based on real-world movie data for managing information about movies, directors, genres, and countries. The database supports queries to analyze movie ratings, durations, and other related data.

## Database Schema
Tables:
#directors: Stores director details (director_id, director_name, birth_year, nationality).

#movies: Contains movie information (movie_id, director_id, movie_name, release_date, user_rating, movie_status, duration_min). Linked to directors via director_id.
#genres: Stores genre details (genre_id, genre_name).
#movie_genres: Many-to-many relationship between movies and genres.
#countries: Stores country details (country_id, country_name).
#movie_countries: Many-to-many relationship between movies and countries.

## Sample Data
Inserted data for 50+ movies with associated directors.
Director information includes nationality and birth year.
Movies cover a variety of genres, release dates, and user ratings.
Data is sourced from actual movie releases and real director profiles.

## Key Queries
Top-rated movies: List movies with user ratings above 8.0 sorted by release date.
Longest movies: Retrieve movies with a duration of 150 minutes or more.
Movies released outside the US: Identify movies linked to countries other than the US.
Directors with no low-rated movies: Find directors whose movies all have ratings above 6.0.
Directors with 2 or fewer movies: Calculate average movie ratings for these directors.
Directors with multiple movies: Count directors with more than 3 movies.
Popular genres: List genres that have at least 5 movies.
Countries with many movies: List countries that produced more than 3 movies.
Highly rated directors: Directors with average movie rating above 7.0 and at least 2 movies.
Genres with high average rating: Genres with average movie ratings greater than 6.5 and at least 3 movies.
  
## Features:
This movie database project features a comprehensive and scalable structure that stores detailed information about movies, including titles, release dates, user ratings, status, and durations. It maintains director profiles with personal and nationality details and supports complex many-to-many relationships for genres and countries associated with each movie. The database enforces data integrity through foreign key constraints and allows for rich querying capabilities, such as filtering movies by rating, analyzing director filmographies, and evaluating genre popularity. With real-world sample data, the project demonstrates practical applications in organizing, analyzing, and retrieving movie industry information efficiently.

## Source: IMDB movies dataset (https://www.kaggle.com/datasets/ashpalsingh1525/imdb-movies-dataset).

## Project by: Krishna Tamang

















