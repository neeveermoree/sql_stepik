SELECT supply.title Название, supply.author Автор, (book.amount + supply.amount) Количество
FROM
    book INNER JOIN author USING(author_id)
    INNER JOIN supply USING(title, price);
