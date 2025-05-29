use REDVEN
GO

-- 2) Por política de la empresa, no se pueden registrar ventas con una fecha mayor al día actual.
-- Cree un trigger que evite la inserción de ventas con fecha futura.

-- Trigger correcto para SQL Server

CREATE TRIGGER tr_PreventFechaFutura
ON Venta
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE Fecha > GETDATE())
    BEGIN
        RAISERROR('No se puede insertar una venta con fecha futura.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;