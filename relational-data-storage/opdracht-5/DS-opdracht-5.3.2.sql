CREATE VIEW v_verzendlijst
AS
SELECT 
	  s.id
     ,IF(s.p_address = "",CONCAT(s.straat," ",s.huisnr),s.p_address) AS adres
     ,IF(s.p_address = "",s.postcode,s.p_postcode) AS postcode
     ,IF(s.p_address = "",c2.name,c1.name) AS stad
     	
FROM mhl_suppliers s
LEFT JOIN mhl_cities c1 
	ON c1.id = s.p_city_ID
LEFT JOIN mhl_cities c2
	ON c2.id = s.city_ID;