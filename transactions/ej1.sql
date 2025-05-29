use REDVEN
GO

/*1) Registrar una venta con sus items solo si hay stock suficiente en todos los artículos involucrados. 
Si alguno no tiene stock, se cancela la operación y no se registra nada. 
Si hay stock suficiente, se registran la venta, los items y se actualiza el stock restando la cantidad vendida.*/

BEGIN TRANSACTION;

DECLARE @StockInsuficiente BIT = 0;

INSERT INTO Venta (idVenta, Token, idEmpresa, Fecha)
VALUES (2001, 5, 1, GETDATE());

DECLARE @idArticulo INT, @Cantidad DECIMAL(10,2);

DECLARE items_cursor CURSOR FOR
SELECT idArticulo, Cantidad FROM (VALUES (10, 3), (20, 1)) AS v(idArticulo, Cantidad);

OPEN items_cursor;
FETCH NEXT FROM items_cursor INTO @idArticulo, @Cantidad;

WHILE @@FETCH_STATUS = 0
BEGIN
    IF EXISTS (SELECT 1 FROM Articulo WHERE idArticulo = @idArticulo AND Stock < @Cantidad)
    BEGIN
        SET @StockInsuficiente = 1;
        BREAK;
    END

    INSERT INTO ItemVenta (idVenta, idArticulo, Cantidad, Precio)
    SELECT 2001, @idArticulo, @Cantidad, Precio
    FROM Articulo WHERE idArticulo = @idArticulo;

    FETCH NEXT FROM items_cursor INTO @idArticulo, @Cantidad;
END

CLOSE items_cursor;
DEALLOCATE items_cursor;

IF @StockInsuficiente = 1
BEGIN
    ROLLBACK TRANSACTION;
    RAISERROR('No hay stock suficiente para algun articulo.', 16, 1);
END
ELSE
BEGIN
    UPDATE Articulo
    SET Stock = Stock - iv.Cantidad
    FROM Articulo a
    JOIN ItemVenta iv ON a.idArticulo = iv.idArticulo
    WHERE iv.idVenta = 2001;

    COMMIT TRANSACTION;
END
