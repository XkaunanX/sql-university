use REDVEN;
GO

/*4) Realizar una selección que le permita listar toda la información pertinente de aquellos usuarios que tienen
el apellido Martinez.*/

select *
from Cliente C
where C.RazonSocial like '%Martinez%'