use REDVEN;
GO

/*7) Crear el SP BuenosClientes que reciba un monto determinado, y
devuelva el listado de clientes que superan es monto en al menos una
compra.*/

CREATE PROCEDURE BuenosClientes
    @Monto MONEY
AS
BEGIN
    SELECT DISTINCT c.Token, c.RazonSocial, c.Domicilio, c.Telefono
    FROM Cliente c
    INNER JOIN Venta v ON c.Token = v.Token
    INNER JOIN ItemVenta iv ON v.idVenta = iv.idVenta
    GROUP BY c.Token, c.RazonSocial, c.Domicilio, c.Telefono, v.idVenta
    HAVING SUM(iv.Cantidad * iv.Precio) > @Monto
END
GO

EXEC BuenosClientes @Monto = 1000;
GO