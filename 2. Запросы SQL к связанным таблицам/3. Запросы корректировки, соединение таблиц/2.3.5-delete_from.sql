DELETE FROM author
WHERE author.author_id IN (
SELECT book.author_id
FROM book
GROUP BY author_id
HAVING SUM(amount) < 20
);

SELECT * FROM book;
