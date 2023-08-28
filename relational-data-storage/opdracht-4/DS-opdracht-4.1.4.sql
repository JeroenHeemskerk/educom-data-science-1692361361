SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM mhl_suppliers s
LEFT JOIN mhl_yn_properties yn
ON yn.supplier_ID = s.id
LEFT JOIN mhl_propertytypes pt
ON pt.id = yn.propertytype_ID
WHERE pt.name IN ('specialistische leverancier', 'ook voor particulieren')