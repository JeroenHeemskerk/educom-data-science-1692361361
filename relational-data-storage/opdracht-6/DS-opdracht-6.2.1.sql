SELECT 
	 DATE_FORMAT(s.joindate, "%d.%m.%Y") AS joindate
    ,s.id
FROM mhl_suppliers s
WHERE s.joindate BETWEEN DATE_ADD(LAST_DAY(s.joindate), INTERVAL -7 DAY) AND LAST_DAY(s.joindate);