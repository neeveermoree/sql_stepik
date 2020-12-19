SELECT title, author, price * amount
FROM   book
WHERE  title LIKE ('Булгаков')
ORDER BY price * amount;
