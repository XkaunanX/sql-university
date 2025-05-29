use REDVEN;
GO

/*16) Listar el monto total vendido por mes en el año 2019 por cada una de las empresas.*/

SELECT e.RazonSocial AS Empresa, MONTH(v.Fecha) AS Mes, SUM(iv.Cantidad * iv.Precio) AS MontoTotal
FROM Venta v JOIN Empresa e ON v.idEmpresa = e.idEmrpesa JOIN ItemVenta iv ON v.idVenta = iv.idVenta
WHERE YEAR(v.Fecha) = 2019
GROUP BY e.RazonSocial, MONTH(v.Fecha)
ORDER BY e.RazonSocial, Mes;