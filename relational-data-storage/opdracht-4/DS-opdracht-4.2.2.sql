SELECT c1.name AS stad, IFNULL(c2.name, "INVALID") AS gemeente
FROM mhl_cities AS c1
LEFT JOIN mhl_communes AS c2
    ON c2.id = c1.commune_ID;
