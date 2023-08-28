SELECT 
	c1.name AS 'C1.name',
    c2.name AS 'C2.name',
    c1.id AS 'C1.id',
    c2.id AS 'C2.id',
    c1.commune_ID AS 'C1.commune_ID',
    c2.commune_ID AS 'C2.commune_ID'
FROM mhl_cities AS c1, mhl_cities AS c2
WHERE c1.name = c2.name
AND c1.id <> c2.id
AND c1.id < c2.id
ORDER BY c1.name ASC, c2.name ASC;