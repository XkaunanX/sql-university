use REDVEN;
GO

/*3) Crear el SP que devuelva los Clientes que han comprado más de
$500000 en un año que se recibe por parámetro.*/

CREATE PROCEDURE ClientesConComprasMayoresA500K
    @anio INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        C.Token,
        C.RazonSocial,
        SUM(IV.Cantidad * IV.Precio) AS MontoTotal
    FROM Venta V
    INNER JOIN Cliente C ON V.Token = C.Token
    INNER JOIN ItemVenta IV ON V.idVenta = IV.idVenta
    WHERE YEAR(V.Fecha) = @anio
    GROUP BY C.Token, C.RazonSocial
    HAVING SUM(IV.Cantidad * IV.Precio) > 500000;

    IF @@ROWCOUNT = 0
    BEGIN
        PRINT 'NINGUN CLIENTE SUPERO LOS $500000 EN COMPRAS ESE AÑO';
    END
END;
GO

EXEC ClientesConComprasMayoresA500K @anio = 2023;
GO