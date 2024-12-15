SELECT telefonnr, COUNT(telefonnr) AS anzahl 
FROM personal 
GROUP BY telefonnr 
HAVING COUNT(telefonnr)>1
