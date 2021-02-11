SELECT genre.name_genre, book.title, author.name_author
FROM genre INNER JOIN book ON book.genre_id = genre.genre_id INNER JOIN author ON book.author_id = author.author_id
WHERE genre.name_genre = 'Роман'
ORDER BY book.title;
