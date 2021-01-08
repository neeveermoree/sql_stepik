CREATE TABLE tmp_table SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING COUNT(violation) > 1;

UPDATE fine f, tmp_table tt SET f.sum_fine = f.sum_fine * 2
WHERE (f.date_payment IS Null) AND f.name = tt.name AND f.number_plate = tt.number_plate AND f.violation = tt.violation;

SELECT * FROM fine;
