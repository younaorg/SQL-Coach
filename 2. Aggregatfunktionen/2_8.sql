SELECT projekt.projnr, SUM(personal.gehalt) AS gehaelter, COUNT(*) AS anz_mitarbeiter
FROM projekt
JOIN personal ON projekt.projnr = personal.projnr
GROUP BY projekt.projnr
HAVING COUNT(*) > 5 OR SUM(personal.gehalt)>3000
ORDER BY projekt.projnr
