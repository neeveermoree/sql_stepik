SELECT ROUND(AVG(price), 2) AS Средняя_цена,
       SUM(price * amount) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;
