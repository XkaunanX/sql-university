use REDVEN;
GO

/*6) Realizar una selección que le permita listar la cantidad de veces que se vendió cada producto en el año
actual. Cantidad de veces, no es cantidad de artículos.*/

SELECT cantidadVentas = COUNT(Iv.idArticulo), A.Descripcion
FROM Articulo A JOIN ItemVenta Iv ON A.idArticulo = Iv.idArticulo JOIN Venta V ON Iv.idVenta = V.idVenta
WHERE YEAR (V.Fecha) = 2019
GROUP BY A.Descripcion
ORDER BY cantidadVentas DESC;