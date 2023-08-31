SELECT 
	 c.name
    ,CONCAT(UPPER(LEFT(c.name,1)),RIGHT(c.name,LENGTH(c.name)-1)) AS nice_name
FROM mhl_cities c
ORDER BY c.name ASC;