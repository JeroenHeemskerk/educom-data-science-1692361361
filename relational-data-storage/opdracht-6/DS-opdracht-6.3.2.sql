SELECT 
	 s.name
    ,(CASE 
        WHEN LOCATE('&Uuml;', s.name)  !=0 	THEN REPLACE(s.name, '&Uuml;', 'Ü')
        WHEN LOCATE('&eacute;', s.name)!=0 	THEN REPLACE(s.name, '&eacute;', 'é')
        WHEN LOCATE('&euml;', s.name)  !=0 	THEN REPLACE(s.name, '&euml;', 'ë')
      	WHEN LOCATE('&egrave;', s.name)!=0 	THEN REPLACE(s.name, '&egrave;', 'è')
      	WHEN LOCATE('&ouml;', s.name)  !=0 	THEN REPLACE(s.name, '&ouml;', 'ö')
      	WHEN LOCATE('&iuml;', s.name)  !=0 	THEN REPLACE(s.name, '&iuml;', 'ï')
      	WHEN LOCATE('&acirc;', s.name) !=0 	THEN REPLACE(s.name, '&acirc;', 'â')
     	ELSE s.name 
      END) AS nice_name
FROM mhl_suppliers s
WHERE s.name LIKE '%&[a-z]%' OR s.name LIKE '%;%'
ORDER BY s.name ASC;