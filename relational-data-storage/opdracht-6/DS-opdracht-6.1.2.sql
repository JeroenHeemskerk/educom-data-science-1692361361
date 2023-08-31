SELECT 
	 c1.name AS gemeente
    ,s1.name AS leverancier
    ,th.total_hitcount
    ,avg_h.avg_hitcount AS average_hitcount
    
FROM mhl_communes c1
LEFT JOIN mhl_cities c2
	ON c2.commune_ID = c1.id
INNER JOIN mhl_suppliers s1 
	ON s1.city_ID = c2.id
LEFT JOIN (SELECT
           		h1.supplier_ID
           		,SUM(h1.hitcount) AS total_hitcount
           FROM mhl_hitcount h1
           GROUP BY h1.supplier_ID
) AS th
	ON th.supplier_ID = s1.id
LEFT JOIN (SELECT
           		 AVG(h2.hitcount) AS avg_hitcount
           		,c4.id AS commune_ID
           FROM mhl_hitcount AS h2
           LEFT JOIN mhl_suppliers s2
           		ON s2.id = h2.supplier_ID
           LEFT JOIN mhl_cities c3
           		ON c3.id = s2.city_ID
           LEFT JOIN mhl_communes c4
           		ON c4.id = c3.commune_ID
           GROUP BY c4.id
) AS avg_h
	ON avg_h.commune_ID = c1.id
    
ORDER BY c1.name ASC, th.total_hitcount DESC;