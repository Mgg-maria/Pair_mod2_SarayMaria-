SELECT* 
FROM Employees;

-- Consulta Empleadas. Id, first and last name
SELECT EmployeeID AS id, LastName AS apellido, FirstName AS nombre
FROM Employees;

-- Productos más baratos, identificar productos precio unidad entre 0 y 5 dólares

SELECT *
	FROM Products
    WHERE UnitPrice BETWEEN 0 AND 5;

-- Seleccionamos los datos Null de la tabla Products

SELECT *
	FROM Products 
    WHERE UnitPrice = NULL;
    
    SELECT UnitPrice
    FROM Products;
    
-- Seleccionamos productos cuyo precio sea menor a 15 dolares y tengan un ID menor que 20

SELECT *
	FROM products
    WHERE UnitPrice < 15 AND ProductID < 20;
    
SELECT UnitPrice, ProductID
	FROM Products;
    
-- Hacemos la misma consulta que la anterior, pero inviertiendo uso de operadores y queremos saber aquellos que tengan un precio superior a 15 dolares y un ID superior a 20

SELECT *
	FROM products
    WHERE UnitPrice > 15 AND ProductID > 20;

-- Otra forma de hacerlo, con NOT

SELECT * 
FROM products 
WHERE NOT (price <= 15 OR product_id <= 20);

-- Lista de paises que hacen pedidos (orders)

SELECT DISTINCT ShipCountry
FROM orders;

-- Consulta que muestra los 10 primeros productos segun su ID y que nos indique el nombre de dichos productos y sus precios

SELECT ProductID,ProductName, UnitPrice
FROM products
ORDER BY ProductID
LIMIT 10;

-- Realizamos la misma consulta pero que nos muestre los últimos 10 productos según su ID de manera descendiente.

SELECT ProductID,ProductName, UnitPrice
FROM products
ORDER BY ProductID DESC
LIMIT 10;

-- Nos interesa conocer los distintos pedidos que hemos tenido (mostrar los valores únicos de ID en la tabla order_details).

SELECT DISTINCT OrderID
FROM orderdetails;

-- BONUS



    