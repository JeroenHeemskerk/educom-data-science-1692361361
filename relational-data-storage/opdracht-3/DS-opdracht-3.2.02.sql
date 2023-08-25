SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM `mhl_suppliers` AS s 
LEFT JOIN `mhl_membertypes` AS m 
    ON m.id = s.membertype 
WHERE m.name IN ('Gold','Silver','Bronze','GEEN INTERRESSE'); 