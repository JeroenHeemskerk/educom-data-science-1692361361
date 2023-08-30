SELECT 
	s.name, 
    SUM(h.hitcount) AS num_hits,
    COUNT(h.month) AS num_months,
    ROUND(AVG(h.hitcount)) AS avg_per_month
FROM mhl_hitcount as h
LEFT JOIN mhl_suppliers AS s 
	ON h.supplier_ID = s.id
GROUP BY s.name
ORDER  BY avg_per_month DESC;