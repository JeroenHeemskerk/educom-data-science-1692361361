SELECT 
	c.name AS Stad,
    SUM(IF(m.name="Gold",1,0)) AS Gold,
    SUM(IF(m.name="Silver",1,0)) AS Silver,
    SUM(IF(m.name="Bronze",1,0)) AS Bronze,
    SUM(IF(m.name!="Gold" AND m.name!="Silver" AND m.name!="Bronze",1,0)) AS Other
		
FROM mhl_cities c
LEFT JOIN mhl_suppliers s 
	ON s.city_ID = c.id
LEFT JOIN mhl_membertypes m
	ON m.id = s.membertype
    
GROUP BY c.id
ORDER BY Gold DESC, Silver DESC, Bronze DESC;