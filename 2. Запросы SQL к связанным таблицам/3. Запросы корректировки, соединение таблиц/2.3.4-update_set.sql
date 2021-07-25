UPDATE book
SET genre_id = 
    (
    SELECT genre_id
    FROM genre
    WHERE genre.name_genre = 'Поэзия'
    )
WHERE book_id = 10;


UPDATE book
SET genre_id = 
    (
    SELECT genre_id
    FROM genre
    WHERE genre.name_genre = 'Приключения'
    )
WHERE book_id = 11;

SELECT * FROM book;
