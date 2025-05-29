use REDVEN;
GO

/*13) Generar la consulta que emita la lista de precios más completa de cada empresa.*/

SELECT e.idEmrpesa AS idEmpresa,e.RazonSocial AS Empresa, s.NombreSeccion,r.NombreRubro,a.idArticulo,a.Descripcion AS Articulo,a.Codigo,a.Precio, a.Stock
FROM Articulo a JOIN Rubro r ON a.idRubro = r.idRubro JOIN Seccion s ON r.idSeccion = s.idSeccion JOIN Empresa e ON s.idEmpresa = e.idEmrpesa
ORDER BY e.idEmrpesa, r.NombreRubro, a.Descripcion;
GO