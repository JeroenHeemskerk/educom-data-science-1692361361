SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM `mhl_suppliers` AS s 
LEFT JOIN `mhl_cities` AS c 
    ON c.id = s.city_id 
WHERE c.name = 'Amsterdam'; 