CREATE VIEW v_directie
AS
SELECT 
	 c.supplier_ID
    ,c.name AS contact
    ,c.contacttype AS functie
    ,d.name AS department
	
FROM mhl_contacts c
INNER JOIN mhl_departments d 
	ON d.id = c.department
    
WHERE d.name = 'Directie'
OR c.contacttype LIKE '%directeur%';