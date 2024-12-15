SELECT abteilung.abtnr, SUM(personal.gehalt) AS gehaltssumme
FROM abteilung
JOIN projekt ON abteilung.abtnr = projekt.abtnr
JOIN personal ON projekt.projnr = personal.projnr
GROUP BY abteilung.abtnr
ORDER BY abteilung.abtnr
