SELECT title, name, character, role, imdb_votes FROM tvshows_db
WHERE imdb_votes is not null
ORDER by imdb_votes
DESC
LIMIT 10
