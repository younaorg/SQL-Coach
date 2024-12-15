SELECT projnr, COUNT(persnr) AS anzahl
FROM personal
GROUP BY projnr
ORDER BY anzahl DESC
