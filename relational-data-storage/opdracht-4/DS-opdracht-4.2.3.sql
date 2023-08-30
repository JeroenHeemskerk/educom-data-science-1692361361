 SELECT 
    r1.id, 
    r1.name AS hoofdrubriek, 
    r2.name AS subrubriek 
FROM mhl_rubrieken AS r1, mhl_rubrieken AS r2 
WHERE r2.parent = r1.id
ORDER BY hoofdrubriek ASC, subrubriek ASC; 