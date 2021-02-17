SELECT book.title, author.name_author, genre.name_genre, book.price, book.amount
FROM book INNER JOIN author ON book.author_id = author.author_id INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE book.genre_id IN (
    SELECT genre_id
    FROM book
    GROUP BY genre_id
    HAVING SUM(amount) = (
        SELECT MAX(sum_amount)
        FROM (
            SELECT SUM(amount) sum_amount
            FROM book
            GROUP BY genre_id
        ) max_amount
    ) 
)
ORDER BY book.title;
