SELECT
    s.name,
    pt.name,
    IFNULL(yn.content, "NOT SET") as 'value'
FROM mhl_suppliers AS s
CROSS JOIN mhl_propertytypes AS pt
LEFT JOIN mhl_yn_properties AS yn 
  ON s.id = yn.supplier_ID 
  AND pt.id = yn.propertytype_ID
JOIN mhl_cities AS c 
	ON s.city_ID = c.id
WHERE c.name = 'amsterdam' 
AND pt.proptype = "A"
ORDER BY s.name;