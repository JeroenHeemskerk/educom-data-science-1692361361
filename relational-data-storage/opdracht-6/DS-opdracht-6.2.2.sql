SELECT 
	 s.id
	,s.joindate
    ,DATEDIFF(CURDATE(), s.joindate) AS dagen_lid
FROM mhl_suppliers s
ORDER BY dagen_lid ASC;