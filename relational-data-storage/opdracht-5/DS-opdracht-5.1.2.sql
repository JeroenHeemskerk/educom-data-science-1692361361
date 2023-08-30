SELECT 
	h.year,
	COUNT(h.hitcount) AS amount_hitcount,
    MIN(h.hitcount) AS min_hitcount,
    MAX(h.hitcount) AS max_hitcount,
    AVG(h.hitcount) AS avg_hitcount,
    SUM(h.hitcount) AS total_hitcount
FROM mhl_hitcount AS h
GROUP BY h.year