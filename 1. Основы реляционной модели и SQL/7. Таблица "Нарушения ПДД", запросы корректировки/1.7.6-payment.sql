UPDATE fine f, payment p SET f.sum_fine = IF(DATEDIFF(p.date_payment, p.date_violation) < 20, f.sum_fine/2, f.sum_fine), f.date_payment = p.date_payment
WHERE f.name = p.name AND f.number_plate = p.number_plate AND f.violation = p.violation AND f.date_violation = p.date_violation AND f.date_payment IS Null;

SELECT * FROM fine;
