use REDVEN;
GO

/*6) Realizar una selecci�n que le permita listar la cantidad de veces que se vendi� cada producto en el a�o
actual. Cantidad de veces, no es cantidad de art�culos.*/

SELECT cantidadVentas = COUNT(Iv.idArticulo), A.Descripcion
FROM Articulo A JOIN ItemVenta Iv ON A.idArticulo = Iv.idArticulo JOIN Venta V ON Iv.idVenta = V.idVenta
WHERE YEAR (V.Fecha) = 2019
GROUP BY A.Descripcion
ORDER BY cantidadVentas DESC;