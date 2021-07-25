INSERT INTO author(name_author)
SELECT author
FROM author
    RIGHT JOIN supply ON supply.author = author.name_author
WHERE name_author IS NULL;

SELECT * FROM author;
