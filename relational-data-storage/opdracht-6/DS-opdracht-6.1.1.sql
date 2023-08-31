SELECT
	 h.year AS jaar
    ,(CASE
          WHEN h.month = 1 THEN 'Januari'
          WHEN h.month = 2 THEN 'Februari'
          WHEN h.month = 3 THEN 'Maart'
          WHEN h.month = 4 THEN 'April'
          WHEN h.month = 5 THEN 'Mei'
          WHEN h.month = 6 THEN 'Juni'
          WHEN h.month = 7 THEN 'Juli'
          WHEN h.month = 8 THEN 'Augustus'
          WHEN h.month = 9 THEN 'September'
          WHEN h.month = 10 THEN 'Oktober'
          WHEN h.month = 11 THEN 'November'
      	  WHEN h.month = 12 THEN 'December'
      END) AS maand
	,COUNT(h.supplier_ID) AS 'aantal leveranciers'
    ,SUM(h.hitcount) AS 'totaal aantal hits'

FROM mhl_hitcount h 
GROUP BY h.year, h.month
ORDER BY jaar DESC, maand ASC;