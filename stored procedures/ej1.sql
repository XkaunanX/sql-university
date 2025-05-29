use REDVEN;
GO

/*1) Cree el SP (Stored Procedure), que recibiendo un artículo determinado
y un par de fechas, devuelva la cantidad que se han vendido de dicho
producto en el período conformado por las fechas recibidas.*/

CREATE PROCEDURE CantidadVendidaPeriodo

@idArt INT,
@fi DATE,
@fF DATE
AS BEGIN
    SET NOCOUNT ON;

    SELECT cantidadvendida = 
        CASE 
            WHEN SUM(iv.Cantidad) IS NULL THEN 0
            ELSE SUM(iv.Cantidad)
        END
    FROM Articulo A 
    JOIN ItemVenta IV ON A.IDArticulo = IV.IDArticulo 
    JOIN Venta V ON IV.IDVenta = V.IDVenta
    WHERE A.IDArticulo = @idArt 
      AND V.Fecha BETWEEN @fi AND @fF;
END;
GO