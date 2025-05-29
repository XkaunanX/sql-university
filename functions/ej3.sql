use REDVEN
GO

/*
3)Crear una funcion escalar que, dado el ID de un articulo, 
devuelva la cantidad de stock disponible. 
Debe restar las unidades vendidas (en ItemVenta) del stock inicial (en Articulo). 
Si el articulo no existe, debe retornar 0.
*/

CREATE FUNCTION dbo.fn_StockDisponible (@idArticulo INT)
RETURNS INT
AS
BEGIN
    DECLARE @stockInicial INT
    DECLARE @stockVendido INT
    DECLARE @stockDisponible INT

    SELECT @stockInicial = Stock
    FROM Articulo
    WHERE idArticulo = @idArticulo

    SELECT @stockVendido = SUM(Cantidad)
    FROM ItemVenta
    WHERE idArticulo = @idArticulo

    SET @stockDisponible = ISNULL(@stockInicial, 0) - ISNULL(@stockVendido, 0)

    RETURN @stockDisponible
END
GO
