SELECT abtname, vname, nname, telefonnr
FROM personal 
INNER JOIN abteilung ON abteilung.chefnr = personal.persnr 
ORDER BY abtname ASC
