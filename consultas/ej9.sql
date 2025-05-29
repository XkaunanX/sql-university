use REDVEN;
GO

/*9) Realizar una selección que le permita listar el promedio de veces que ha sido vendido cada artículo en el
historial, y ordenar de manera descendente de mayor a menor. De cada artículo incluir el dato de código y
descripción.*/

SELECT A.Codigo, A.Descripcion, SUM(Iv.Cantidad) * 1.0 / COUNT(DISTINCT V.idVenta) as promedioVendido -- El uso de * 1.0 fuerza la división decimal para evitar redondeos enteros.
FROM Articulo A JOIN ItemVenta Iv ON A.idArticulo = Iv.idArticulo JOIN Venta V ON Iv.idVenta = V.idVenta
GROUP BY A.Codigo, a.Descripcion
ORDER BY promedioVendido DESC