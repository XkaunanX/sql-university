use REDVEN;
GO

/*7) Realizar una selección que le permita listar solamente el “apellido y nombre” y DNI de todos los clientes
ordenados por DNI (ascendente), que no tengan un CUIT registrado.*/

SELECT RazonSocial, DNI, CUIT
FROM Cliente C
WHERE C.CUIT IS NULL
ORDER BY DNI ASC;
GO
