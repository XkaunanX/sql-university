-- Ejercicio 3
select 
Ti.Descripcion , CantidadClientes = count(C.idCliente)
from TipoDeIva TI left join Cliente C on TI.IDTipoIva = C.IDTipoIVA
group by TI.Descripcion

-- Ejercicio
select *
from Cliente C
where C.RazonSocial like '%Martinez%'

-- Ejercicio
select RazonSocial, Cantidad = count(Cliente.idCliente)
from Cliente
group by RazonSocial 
having count(Cliente.idCliente) > 1

-- Ejercicio 6
select A.Descripcion, Cantidad = Count(V.idMovimientoCliente)
from (select * From MovimientoCliente where year(FechaMovimiento) = 2023
or Fechamovimiento is null) V 
right join MovimientoArticulo IV on
V.idMovimientoCliente = IV.idMovimientoCliente
right join Articulo A on IV.idArticulo = A.idArticulo  
group by A.Descripcion
order by Cantidad desc

select A.Descripcion, Cantidad = Sum(IV.Cantidad)
from (select * From MovimientoCliente where year(FechaMovimiento) = 2023
or Fechamovimiento is null) V 
right join MovimientoArticulo IV on
V.idMovimientoCliente = IV.idMovimientoCliente
right join Articulo A on IV.idArticulo = A.idArticulo  
group by A.Descripcion
order by Cantidad desc

-- Ejercicio 11 
-- Resuelva el listado que devuelva cual fue el monto vendido por empresa en el año actual.
select E.RazonSocial , MontoVendido = Sum(IV.Cantidad * IV.Precio)
from Empresa E join MovimientoCliente V on E.idEmpresa = V.idE
join MovimientoArticulo IV on V.idVenta = IV.idVenta
where year(V.Fecha) = year(getdate()) 
group by E.RazonSocial 