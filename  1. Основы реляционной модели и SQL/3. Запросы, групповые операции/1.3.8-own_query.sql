SELECT SUM(price * amount)
FROM book
WHERE title LIKE '_% %_'
GROUP BY title
HAVING SUM(amount) > 11;
