DELETE FROM fine
WHERE date_violation < DATE('2020-02-01');

SELECT * FROM fine;
