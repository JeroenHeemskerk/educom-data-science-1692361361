SELECT 
	 IF(r1.parent = 0, r1.name, CONCAT(r2.name, " - ", r1.name)) as name
    ,COUNT(s1.id) AS numsup
    
FROM mhl_rubrieken r1
LEFT JOIN mhl_rubrieken r2
	ON r2.id = r1.parent
LEFT JOIN mhl_suppliers_mhl_rubriek_view srv
	ON srv.mhl_rubriek_view_ID = r1.id
LEFT JOIN mhl_suppliers s1
	ON s1.id = srv.mhl_suppliers_ID

GROUP BY name
ORDER BY name ASC;