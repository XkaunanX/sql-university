use REDVEN;
GO

/*6) Escriba el SP RankingClientes que devuelva el listado de clientes
acompañado por la cantidad de compras que ha realizado. En caso de
haber clientes que nunca compraron devolver 0.*/

CREATE PROCEDURE RankingClientes
AS
BEGIN
    SELECT 
        c.Token,
        c.RazonSocial,
        ISNULL(COUNT(v.idVenta), 0) AS CantidadCompras
    FROM 
        dbo.Cliente c
    LEFT JOIN 
        dbo.Venta v ON c.Token = v.Token
    GROUP BY 
        c.Token, c.RazonSocial
    ORDER BY 
        CantidadCompras DESC;
END;
GO

EXEC RankingClientes;
GO