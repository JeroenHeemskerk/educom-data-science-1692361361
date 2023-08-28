SELECT 
    c1.name,
    c1.id AS cid1,
    c2.id AS cid2,
    c1.commune_ID AS gid1,
    c2.commune_ID AS gid2,
    com1.name AS gemeente_1,
    com2.name AS gemeente_2
FROM mhl_cities AS c1
LEFT JOIN mhl_cities AS c2 
    ON c1.name = c2.name
LEFT JOIN mhl_communes AS com1 
    ON c1.commune_ID = com1.id
LEFT JOIN mhl_communes AS com2 
    ON c2.commune_ID = com2.id
WHERE c1.id != c2.id
AND c1.id < c2.id
AND (c1.commune_ID != 0
AND c2.commune_ID != 0)
ORDER BY c1.name