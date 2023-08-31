SELECT 
	s.name 
    ,IFNULL(vd.contact, "t.a.v. directie") AS contact
    ,vv.adres
    ,vv.postcode
    ,vv.stad
    
FROM mhl_suppliers s
LEFT JOIN v_directie vd
	ON vd.supplier_ID = s.id
LEFT JOIN v_verzendlijst vv
	ON vv.id = s.id;