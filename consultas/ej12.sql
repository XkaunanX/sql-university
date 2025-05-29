use REDVEN;
GO

/*12) Realizar una selección de los productos que se contengan la palabra “unipolar”, junto con sus precios.*/

SELECT A.Descripcion, A.Precio
FROM Articulo A
WHERE A.Descripcion LIKE '%unipolar%';