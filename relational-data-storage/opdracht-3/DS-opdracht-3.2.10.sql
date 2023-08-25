SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM `mhl_suppliers` AS s 
WHERE s.name LIKE "%&[^a-z]%" 
OR s.name LIKE "%;%"; 