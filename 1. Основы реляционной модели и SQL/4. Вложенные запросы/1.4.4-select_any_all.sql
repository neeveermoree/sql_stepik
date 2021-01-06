SELECT author,
       title,
       price
FROM book
WHERE author = ANY (SELECT author FROM book GROUP BY author HAVING AVG(price) > (SELECT AVG(price) FROM book););
