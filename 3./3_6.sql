SELECT a1.persnr, EXTRACT(YEAR FROM a1.datum) AS jahr
FROM akte a1
JOIN akte a2 ON a1.persnr = a2.persnr
    AND a1.datum < a2.datum
    AND EXTRACT(YEAR FROM a1.datum) = EXTRACT(YEAR FROM a2.datum)
WHERE a2.gehalt - a1.gehalt >= 1000
ORDER BY a1.persnr, jahr
