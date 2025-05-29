use REDVEN
GO

-- 3) Crear una vista que muestre el detalle de los items vendidos, incluyendo el nombre del articulo, cantidad y precio.
-- La vista debe incluir el id de venta, descripcion del articulo, cantidad y precio por unidad.

CREATE VIEW DetalleItemVenta AS
SELECT iv.idVenta, a.Descripcion AS ArticuloDescripcion, iv.Cantidad, iv.Precio
FROM ItemVenta iv
JOIN Articulo a ON iv.idArticulo = a.idArticulo;