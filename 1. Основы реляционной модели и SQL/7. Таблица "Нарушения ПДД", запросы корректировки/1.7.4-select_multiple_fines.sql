SELECT DISTINCT name, number_plate, violation
FROM fine f
WHERE f.name IN (SELECT DISTINCT name FROM fine GROUP BY name, number_plate, violation HAVING COUNT(violation) > 1)
ORDER BY name, number_plate, violation;
