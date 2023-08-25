SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM `mhl_suppliers` AS s 
LEFT JOIN `mhl_cities` AS c1
    ON c1.id = s.city_id 
LEFT JOIN `mhl_cities` AS c2
	ON c2.id = s.p_city_ID
WHERE c1.name = 'Amsterdam'
AND c2.name != 'Amsterdam';