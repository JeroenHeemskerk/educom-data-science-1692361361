SELECT 
	s.name AS leverancier,
    IFNULL(c1.name, "t.a.v. de directie") AS aanhef,
    IF(s.p_address="",CONCAT(s.straat," ",s.huisnr),s.p_address) AS adres,
    IF(s.p_address="",s.postcode,s.p_postcode) AS postcode,
    IF (s.p_address="",c2.name,c4.name) AS stad,
    IF(s.p_address="",d1.name,d2.name) AS provincie
    
FROM mhl_suppliers s
LEFT JOIN mhl_contacts c1 
	ON c1.supplier_ID = s.id
LEFT JOIN mhl_cities c2
	ON c2.id = s.city_ID
LEFT JOIN mhl_communes c3
	ON c3.id = c2.commune_ID
LEFT JOIN mhl_districts d1
	ON d1.id = c3.district_ID
LEFT JOIN mhl_cities c4
	ON c4.id = s.p_city_ID
LEFT JOIN mhl_communes c5
	ON c5.id = c4.commune_ID
LEFT JOIN mhl_districts d2
	ON d2.id = c5.district_ID

WHERE s.postcode != ""
ORDER BY provincie, stad, leverancier;