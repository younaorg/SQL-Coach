SELECT TO_CHAR(datum, 'YYYY') AS jahr, COUNT(persnr) AS count
FROM akte
GROUP BY jahr
ORDER BY jahr DESC
