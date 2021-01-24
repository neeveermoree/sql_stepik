SELECT DISTINCT name_genre
FROM genre LEFT OUTER JOIN book ON genre.genre_id = book.genre_id
WHERE book.title IS NULL;
