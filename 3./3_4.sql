SELECT DISTINCT p.persnr, p.vname, p.nname, p.projnr, p.telefonnr, p.gehalt
FROM personal p
JOIN projekt pr ON p.projnr = pr.projnr
JOIN abteilung a ON pr.abtnr = a.abtnr
JOIN personal chef ON a.chefnr = chef.persnr
JOIN personal mitarbeiter ON pr.projnr = mitarbeiter.projnr
WHERE chef.vname = 'Donald'
