SELECT name_author
FROM author
WHERE author_id IN (
    SELECT author_id
    FROM (    
        SELECT DISTINCT author_id, genre_id
        FROM book
        GROUP BY author_id, genre_id
    ) author_genre
    GROUP BY author_id
    HAVING COUNT(genre_id) = 1
)
ORDER BY name_author;
