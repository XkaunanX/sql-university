use REDVEN
GO

-- 2) Crear una vista que muestre los articulos junto con su rubro y seccion correspondiente.
-- La vista debe incluir el id del articulo, su descripcion, el nombre del rubro y el nombre de la seccion.

CREATE VIEW ArticulosConRubroYSeccion AS
SELECT a.idArticulo, a.Descripcion AS ArticuloDescripcion, r.NombreRubro, s.NombreSeccion
FROM Articulo a
JOIN Rubro r ON a.idRubro = r.idRubro
JOIN Seccion s ON r.idSeccion = s.idSeccion;