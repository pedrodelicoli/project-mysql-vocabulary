SELECT ProductName AS Produto, 
(
  SELECT MIN(Quantity)
  FROM w3schools.order_details 
  WHERE order_details.ProductID = w3schools.products.ProductID
)  AS 'Mínima',
(
  SELECT MAX(Quantity)
  FROM w3schools.order_details 
  WHERE order_details.ProductID = w3schools.products.ProductID
) AS 'Máxima',
(
  SELECT ROUND((AVG(Quantity)), 2) 
  FROM w3schools.order_details 
  WHERE order_details.ProductID = w3schools.products.ProductID    
) AS Média
FROM w3schools.products
HAVING Média > 20
ORDER BY Média, Produto;
