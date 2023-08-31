SELECT 
	 YEAR(s.joindate) AS jaar
    ,MONTHNAME(s.joindate) AS maand
    ,COUNT(s.id) AS aantal_aanmeldingen
FROM mhl_suppliers s
GROUP BY YEAR(s.joindate), MONTH(s.joindate)
ORDER BY jaar ASC, MONTH(s.joindate) ASC;