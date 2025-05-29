use REDVEN;
GO

/*15) Listar los artículos que nunca han sido vendidos. Luego listar la cantidad de artículos que jamás
fueron vendidos.*/

SELECT A.Descripcion
FROM Articulo A LEFT JOIN ItemVenta Iv ON A.idArticulo = Iv.idArticulo
WHERE A.idArticulo NOT IN (SELECT idArticulo from ItemVenta);

SELECT A.Descripcion
FROM Articulo A LEFT JOIN ItemVenta Iv ON A.idArticulo = Iv.idArticulo
WHERE Iv.idItem IS NULL -- Otra forma