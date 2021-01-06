SELECT MIN(amount),
       author
FROM book
WHERE title LIKE '_% %_'
GROUP BY author
HAVING SUM(price) > (SELECT MAX(price) FROM book);
 