SELECT 
	h.year, 
    SUM(IF(h.month BETWEEN 1 AND 3,h.hitcount,0)) AS 'Eerste kwartaal',
    SUM(IF(h.month BETWEEN 4 AND 6,h.hitcount,0)) AS 'Tweede kwartaal',
    SUM(IF(h.month BETWEEN 7 AND 9,h.hitcount,0)) AS 'Derde kwartaal',
    SUM(IF(h.month BETWEEN 10 AND 12,h.hitcount,0)) AS 'Vierde kwartaal',
    SUM(h.hitcount) AS Totaal
FROM mhl_hitcount h
GROUP BY h.year;