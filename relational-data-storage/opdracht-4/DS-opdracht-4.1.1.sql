SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM `mhl_suppliers` AS s 
LEFT JOIN `mhl_cities` AS c 
    ON c.id = s.city_ID 
WHERE c.name = 'Amsterdam'; 