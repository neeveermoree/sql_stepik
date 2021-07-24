UPDATE book
    JOIN author USING(author_id)
    JOIN supply ON supply.author = author.name_author AND supply.title = book.title
SET book.price = (book.price * book.amount + supply.price * supply.amount) / (book.amount + supply.amount), book.amount = book.amount + supply.amount, supply.amount = 0
WHERE book.price <> supply.price;

SELECT * FROM book;

SELECT * FROM supply;
