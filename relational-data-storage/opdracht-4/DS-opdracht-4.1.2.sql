SELECT 
    s.name, 
    s.straat, 
    s.huisnr, 
    s.postcode, 
    c.name AS plaatsnaam 
FROM `mhl_suppliers` AS s 
LEFT JOIN `mhl_cities` AS c 
    ON c.id = s.city_ID 
LEFT JOIN `mhl_communes` AS g 
    ON g.id = c.commune_ID 
WHERE g.name = 'Steenwijkerland'; 