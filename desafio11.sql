SELECT c.ContactName AS 'Nome', ANY_VALUE(c.Country) AS 'País', COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS c2
ON c2.Country = c.Country AND c.ContactName != c2.ContactName
GROUP BY c.ContactName
ORDER BY c.ContactName;
