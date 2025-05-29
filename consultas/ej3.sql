use REDVEN;
GO

/*3) Realizar una selección que le permita mostrar la CANTIDAD total de clientes por tipo de IVA existente.*/

/*
	Atributos directos y discretos: Ti.IDTipoIva, Ti.Descripcion
	Atributo calculado: cantidadClientes -> determina si se usa GROUP BY
*/
SELECT Ti.IDTipoIva, Ti.Descripcion, cantidadClientes = COUNT(C.Token)
FROM Cliente C RIGHT JOIN TipoDeIva Ti ON c.IDTipoIva = Ti.IDTipoIva /*¿De donde necesito la informacion?*/
GROUP BY Ti.IDTipoIva, Ti.Descripcion; /*Agrupo para que no devuelva un valor unico*/