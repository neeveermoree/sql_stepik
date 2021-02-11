SELECT author.name_author, SUM(book.amount) AS Количество
FROM author LEFT JOIN book ON author.author_id = book.author_id
GROUP BY author.name_author
HAVING SUM(book.amount) < 10 OR COUNT(title) = 0
ORDER BY Количество;
