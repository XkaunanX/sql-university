use REDVEN
GO

/*2) Crear una funcion escalar que, dado el ID de una venta, 
devuelva el total de la misma calculando la suma de la cantidad por el precio 
de cada item asociado a esa venta. Si no hay items asociados, debe retornar 0.*/

CREATE FUNCTION dbo.fn_TotalVenta (@idVenta INT)
RETURNS MONEY
AS
BEGIN
    DECLARE @total MONEY

    SELECT @total = SUM(Cantidad * Precio)
    FROM ItemVenta
    WHERE idVenta = @idVenta

    RETURN ISNULL(@total, 0)
END
GO
