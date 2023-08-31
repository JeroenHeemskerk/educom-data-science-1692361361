SELECT 
	 DAYNAME(s.joindate) AS 'Dag van de week'
    ,COUNT(s.joindate) AS 'Aantal aanmeldingen'
FROM mhl_suppliers s
GROUP BY DAYNAME(s.joindate)
ORDER BY DAYOFWEEK(s.joindate) ASC;