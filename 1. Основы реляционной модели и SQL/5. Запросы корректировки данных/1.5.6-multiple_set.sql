UPDATE book SET buy = amount
WHERE buy > amount;

UPDATE book SET price = ROUND(0.9 * price, 2)
WHERE buy = 0;

SELECT * FROM book;
