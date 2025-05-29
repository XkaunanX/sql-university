use REDVEN
GO

-- 1) Se desea mantener un registro histórico de las ventas eliminadas del sistema. 
-- Cree un trigger que, cada vez que se elimine una venta, inserte su información en una tabla llamada BackupVentas.

CREATE TABLE BackupVentas (
    idVenta INT,
    Fecha DATETIME,
    Token UNIQUEIDENTIFIER,
    Monto DECIMAL(10,2),
    FechaBorrado DATETIME DEFAULT GETDATE()
);

GO

CREATE TRIGGER tr_BackupVentas
ON Venta
AFTER DELETE
AS
BEGIN
    INSERT INTO BackupVentas (idVenta, Fecha, Token, Monto)
    SELECT idVenta, Fecha, Token, Monto
    FROM deleted;
END;