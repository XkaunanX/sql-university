alter procedure Nombre 
 @patron varchar(30), @valor int
as
begin
 declare @@intero int;
 set @@intero = 0;
 if(@valor > 2) 
 begin 
 select * from cliente where razonsocial like '%' + @patron + '%'
 end 
 else
 begin 
  print 'EL valor no cumple' 
 end 

end

exec Nombre 'Maxi',1;

exec Nombre 'Maxi',3;

-- devuelva de la tabla cliente toda la lista de clientes,  en cada caso
-- si el cliente tiene CUIT devolver el CUIT si no, la leyenda 'CONS. FINAL'
select  
RazonSocial, case when (CUIT is not null) then CUIT else 'Cons. Final' end
from cliente 
where CUIT is not null

-- 1)	Cree el SP (Stored Procedure), que recibiendo un artículo determinado 
-- y un par de fechas, devuelva la cantidad que se han vendido de dicho producto
-- en el período conformado por las fechas recibidas. 

create procedure Ejercicio1P3
@idArt int, @Fi date, @Ff date
as
begin

	select cantidadVendida = Sum(IV.Cantidad)

	from venta V join ItemVenta IV on V.idVenta = IV.idventa
		join Articulo A on IV.idArticulo = A.idArticulo

	where IV.idArticulo = @idArt
	      and V.Fecha between @Fi and @Ff
end

exec Ejercicio1P3 9180,'01/01/2000','01/04/2024'

-- 2)	Cree el SP, en la que recibiendo un mes y año, devuelva el listado 
-- clientes que compraron en ese período. En caso de no haber ningún cliente, 
-- que devuelva la leyenda SIN CLIENTES.

alter procedure Ejercicio2P3 
	@mes smallint, @año smallint
as 
begin
if ((select count(*)
from cliente C join Venta V on C.Token = V.Token
where month(V.Fecha) = @mes and year(V.Fecha) = @año) >= 1) 
begin
	(select distinct  c.RazonSocial 
	from cliente C join Venta V on C.Token = V.Token
	where month(V.Fecha) = @mes and year(V.Fecha) = @año )
end 
 else begin select 'SIN RESULTADOS' end
end

exec Ejercicio2P3 01,2021

-- 3) Crear el SP que devuelva los Clientes que han comprado más de $500000
-- en un año que se recibe por parámetro.
create procedure Ejecricio3P3
@año int
as 
begin 
	select
	C.RazonSocial, TotalComprado = Sum(IV.Cantidad * IV.Precio)
	from
	cliente C join Venta V on C.Token = V.Token
	join ItemVenta IV on V.idventa = IV.idVenta
	where @año = Year(V.Fecha)
	group by C.RazonSocial
	having Sum(IV.Cantidad * IV.Precio) > 500000
	order by C.RazonSocial 
end

exec Ejecricio3P3 2021

-- 4) Se requiere la creación de un SP que reciba una imagen como parámetro, 
-- la inserte a un producto que se recibe como parámetro, y luego devuelva 
-- la cantidad de fotos que tiene registrado el artículo correspondiente.
create procedure Ejercicio4P3
@img image, @desc varchar(100), @idArt int
as 
begin 
if (@desc is null or not (len(@desc) >= 0 and len(@desc) <= 100))
begin print 'No se cumple condicion de descripcion' end
else
begin
	insert into imagen values(@idArt, @img, @desc);

	select count(*) from imagen where @idArt = idArticulo

end
	
end

exec Ejercicio4P3 'peraararsdasdfdsfdsf','hol',9180