use REDVEN;
GO

/*4) Realizar una selecci�n que le permita listar toda la informaci�n pertinente de aquellos usuarios que tienen
el apellido Martinez.*/

select *
from Cliente C
where C.RazonSocial like '%Martinez%'