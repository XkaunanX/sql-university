use REDVEN;
GO

/*9) Realizar una selecci�n que le permita listar el promedio de veces que ha sido vendido cada art�culo en el
historial, y ordenar de manera descendente de mayor a menor. De cada art�culo incluir el dato de c�digo y
descripci�n.*/

SELECT A.Codigo, A.Descripcion, SUM(Iv.Cantidad) * 1.0 / COUNT(DISTINCT V.idVenta) as promedioVendido -- El uso de * 1.0 fuerza la divisi�n decimal para evitar redondeos enteros.
FROM Articulo A JOIN ItemVenta Iv ON A.idArticulo = Iv.idArticulo JOIN Venta V ON Iv.idVenta = V.idVenta
GROUP BY A.Codigo, a.Descripcion
ORDER BY promedioVendido DESC