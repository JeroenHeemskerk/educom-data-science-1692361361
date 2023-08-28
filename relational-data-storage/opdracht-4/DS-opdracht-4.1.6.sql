
SELECT 
    h.hitcount, 
    s.name AS leverancier, 
    ci.name AS stad, 
    co.name AS gemeente, 
    d.name AS provincie
FROM mhl_hitcount h
LEFT JOIN mhl_suppliers AS s
ON s.id = h.supplier_ID
LEFT JOIN mhl_cities AS ci
ON s.city_ID = ci.id
LEFT JOIN mhl_communes AS co
ON ci.commune_ID = co.id
LEFT JOIN mhl_districts AS d
ON co.district_ID = d.id
WHERE d.name IN ('Zeeland', 'Limburg') 
AND (h.year = 2014 AND h.month =1)