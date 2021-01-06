CREATE TABLE ordering AS
SELECT author, title, 7 as amount
FROM book
WHERE amount < (SELECT AVG(amount) FROM book);

SELECT * FROM ordering;
