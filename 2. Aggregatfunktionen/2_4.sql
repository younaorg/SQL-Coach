SELECT AVG(projektanzahl) AS mittl_projzahl
FROM (
    SELECT abteilung.abtnr, COUNT(DISTINCT projekt.projnr) AS projektanzahl
    FROM abteilung
    JOIN projekt ON abteilung.abtnr = projekt.abtnr
    GROUP BY abteilung.abtnr
) AS abteilungsprojekte
