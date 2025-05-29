use REDVEN;
GO

/*17) Listar las ventas realizadas por d�a de la semana en todo el historial de la base de datos, pero,
ordenada por n�mero de d�a.*/

SELECT DATENAME(WEEKDAY, v.fecha) AS dia_semana, DATEPART(WEEKDAY, v.fecha) AS numero_dia, COUNT(*) AS cantidad_ventas -- Solo en SQL Server
FROM Venta v
GROUP BY DATENAME(WEEKDAY, v.fecha), DATEPART(WEEKDAY, v.fecha)
ORDER BY numero_dia;