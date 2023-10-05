-- Ejecutar el script AdventureWorks.sql para cargar las tablas y sus registros.

/* Origen del Dataset: https://learn.microsoft.com/en-us/previous-versions/sql/sql-server-2008/ms124597(v=sql.100)
   Diccionario de Datos: AdventureWorks_DataDictionary
*/

USE `adventureworks`;

-- 1. Crear un procedimiento que recibe como parámetro una fecha y muestre la cantidad de órdenes ingresadas en esa fecha.
DROP PROCEDURE Purchase_OrderDate;

DELIMITER $$
CREATE PROCEDURE Purchase_OrderDate(IN p_OrderDate DATETIME)
BEGIN
   SELECT COUNT(*)
	 FROM `purchaseorderheader`
	WHERE DATE(OrderDate) = p_OrderDate;
END $$
DELIMITER ;

CALL Purchase_OrderDate('2001-05-17');


-- 2. Crear una función que calcule el valor nominal de un margen bruto determinado por el usuario a partir del precio de lista de los productos.
/* Debes habilitar log_bin_trust_function_creators (estableciéndolo en 1)
   Si intentas crear una función o procedimiento almacenado que utiliza SQL dinámico sin habilitar éste parámetro recibirás un error 
   que indica que no tienes los privilegios necesarios para hacerlo.
*/
SET GLOBAL log_bin_trust_function_creators = 1;

DROP FUNCTION Valor_Nominal;

DELIMITER $$
CREATE FUNCTION Valor_Nominal(precio DECIMAL(15,2),margen_bruto DECIMAL(10,2)) RETURNS DECIMAL(15,2)
BEGIN
    DECLARE valor_margen DECIMAL (15,2);
    SET valor_margen = precio * margen_bruto;
    RETURN valor_margen;
END $$
DELIMITER ;

Select Valor_Nominal(100.50, 1.2);


-- 3. Obtner un listado de productos en orden alfabético que muestre cuál debería ser el valor de precio de lista, 
-- si se quiere aplicar un margen bruto del 20%, utilizando la función creada en el punto 2, sobre el campo StandardCost. 
-- Mostrando tambien el campo ListPrice y la diferencia con el nuevo campo creado.
SET @margen_bruto = 1.2;

SELECT Name, 
	   ListPrice, 
       StandardCost, 
       Valor_Nominal(StandardCost,@margen_bruto) AS Valor_Nominal, 
       ROUND((ListPrice- Valor_Nominal(StandardCost,@margen_bruto)),2) AS Diferencia
FROM product 
ORDER BY 1;


-- 4. Crear un procedimiento que reciba como parámetro una fecha desde y una hasta, y muestre un listado con los Id 
-- de los diez Clientes que más costo de transporte tienen entre esas fechas (campo Freight).
DROP PROCEDURE gastoTransporte;

DELIMITER $$
CREATE PROCEDURE gastoTransporte(IN fechaDesde DATE, IN fechaHasta DATE)
BEGIN
	SELECT CustomerID, SUM(Freight) AS TotalTransporte
	FROM salesorderheader
	WHERE OrderDate BETWEEN fechaDesde AND fechaHasta
	GROUP BY CustomerID
	ORDER BY TotalTransporte DESC
    LIMIT 10;
END $$
DELIMITER ;

CALL gastoTransporte('2002-01-01','2002-01-31');


-- 5. Crear un procedimiento que permita realizar la insercción de datos en la tabla shipmethod
DROP PROCEDURE cargarShipmethod;

DELIMITER $$
CREATE PROCEDURE cargarShipmethod(IN nombre VARCHAR(50), IN base DOUBLE, IN rate DOUBLE)
BEGIN
    INSERT INTO shipmethod (Name, ShipBase, ShipRate, ModifiedDate)
	VALUES (nombre,base,rate,NOW());
END $$
DELIMITER ;

CALL cargarShipmethod('Prueba', 1.5, 3.5);

SELECT * FROM shipmethod;