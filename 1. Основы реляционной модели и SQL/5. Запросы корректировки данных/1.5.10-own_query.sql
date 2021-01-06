CREATE TABLE own_query AS
SELECT title, author, price, amount
FROM supply
WHERE author NOT IN (SELECT DISTINCT author FROM book);

SELECT * FROM own_query;
