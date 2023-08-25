SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM `mhl_suppliers` AS s 
WHERE (s.huisnr BETWEEN 10 AND 20) 
OR s.huisnr > 100; 