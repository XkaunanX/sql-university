use REDVEN
GO

-- 1) Crear una vista que muestre las ventas junto con los datos del cliente asociado.
-- La vista debe incluir el ID de la venta, la fecha, la razon social y el CUIT del cliente.

CREATE VIEW VentasConClientes AS
SELECT v.idVenta, v.Fecha, c.RazonSocial, c.CUIT
FROM Venta v
JOIN Cliente c ON v.Token = c.Token;
