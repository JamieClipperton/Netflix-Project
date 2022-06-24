SELECT title, release_year, genres, seasons, imdb_score, imdb_votes FROM tvshows_db
WHERE imdb_score is not null
ORDER by imdb_votes
DESC
LIMIT 10


