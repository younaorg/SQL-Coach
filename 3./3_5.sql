SELECT DISTINCT abteilung.abtname, abteilung.budget
FROM abteilung
JOIN projekt ON abteilung.budget = projekt.budget
ORDER BY abteilung.abtname ASC
