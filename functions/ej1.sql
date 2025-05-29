use REDVEN
GO

/*1) Crear una funcion escalar que, dado el ID de un articulo, 
devuelva su precio final con un IVA del 21% aplicado. 
Si el articulo no existe, debera retornar 0.*/

CREATE FUNCTION dbo.fn_PrecioConIVA (@idArticulo INT) RETURNS MONEY
AS
BEGIN
    DECLARE @precio MONEY

    SELECT @precio = Precio * 1.21
    FROM Articulo
    WHERE idArticulo = @idArticulo

    RETURN ISNULL(@precio, 0)
END
GO
