use REDVEN
GO

/*2) Registrar la devolución de un producto, incrementar el stock del artículo, 
y dejar registro en la tabla de movimientos de stock. Si falla alguna operación, se revierte todo.*/

BEGIN TRANSACTION;

DECLARE @idArticulo INT = 10;
DECLARE @Cantidad DECIMAL(10,2) = 2;

INSERT INTO Devolucion (idArticulo, Cantidad, Fecha)
VALUES (@idArticulo, @Cantidad, GETDATE());

UPDATE Articulo
SET Stock = Stock + @Cantidad
WHERE idArticulo = @idArticulo;

INSERT INTO MovimientoStock (idArticulo, Cantidad, TipoMovimiento, Fecha)
VALUES (@idArticulo, @Cantidad, 'Devolucion', GETDATE());

IF @@ERROR <> 0
BEGIN
    ROLLBACK TRANSACTION;
    RAISERROR('Error en la devolucion o ajuste de stock.', 16, 1);
END
ELSE
BEGIN
    COMMIT TRANSACTION;
END
