SELECT chef.persnr, chef.vname, chef.nname, chef.projnr, chef.telefonnr, chef.gehalt
FROM personal heinz
INNER JOIN projekt ON heinz.projnr = projekt.projnr
INNER JOIN abteilung abt ON projekt.abtnr = abt.abtnr
INNER JOIN personal chef ON abt.chefnr = chef.persnr
WHERE heinz.vname = 'Heinz'
