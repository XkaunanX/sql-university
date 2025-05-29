use REDVEN;
GO

/*5) Cree un SP que devuelva las secciones que no tienen rubros asociados.*/

CREATE PROCEDURE sp_SeccionesSinRubros
AS
BEGIN
    SET NOCOUNT ON;

    SELECT S.*
    FROM Seccion S
    LEFT JOIN Rubro R ON S.idSeccion = R.idSeccion
    WHERE R.idSeccion IS NULL;
END;
GO

EXEC sp_SeccionesSinRubros;
GO