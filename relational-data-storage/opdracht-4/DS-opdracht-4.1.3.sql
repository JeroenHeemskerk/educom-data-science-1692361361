SELECT 
	r.name AS 'Rubriek naam',
	s.name AS 'Supplier naam', 
    s.straat, 
    s.huisnr, 
    s.postcode
FROM `mhl_suppliers` AS s 
LEFT JOIN `mhl_cities` AS c 
	ON c.id = s.city_ID 
LEFT JOIN `mhl_suppliers_mhl_rubriek_view` AS v 
	ON v.mhl_suppliers_ID = s.id
LEFT JOIN `mhl_rubrieken` AS r 
	ON r.id = v.mhl_rubriek_view_ID
WHERE c.name = 'Amsterdam'
AND (r.name = 'drank' OR r.name = ANY (
    SELECT rub.name
    FROM `mhl_rubrieken` AS rub
    WHERE rub.parent = ANY (
        SELECT id
        FROM `mhl_rubrieken`
        WHERE name = 'drank')))
ORDER BY r.name ASC, s.name ASC;