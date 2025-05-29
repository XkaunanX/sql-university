create table Localidad (
	idLocalidad int primary key identity not null,
	NombreLoc varchar(50) not null)
-- Borra todas las filas de una tabla (OJO: Falta condición)
delete from Clientes 

-- Agrega un campo a una tabla
alter table Clientes add idLocalidad int not null 
alter table clientes add FechaNac date null

-- insertar información
insert into Localidad (NombreLoc) values('La Plata')
insert into Localidad values('Ensenada')
insert into Localidad values('Berisso')
insert into Localidad values('Lobos')
delete from localidad where idLocalidad = 4

insert into Clientes values(22451333,'Maxi','55',null,'555-4555',1)
insert into Clientes (idLocalidad,DNI,AYN) values(1,22555442,'Juan')
insert into clientes values(23456115,'Federico','45 y 122','Es un tipo copado','565-4555',2)
insert into clientes values(23555444,'Gonzalo','45 y 124','NO TIENE','566-4475',2)
insert into clientes values(90124887,'Martín','7 y 48','','534-4555',5)

-- borrar con condición
delete from clientes where DNI = 22555442
delete from clientes where idLocalidad = 2

-- modificar info
update clientes set Domicilio = '71 y 24' where dni = 22555442

-- seleccionar info
select * from localidad
select * from clientes

select DNI,AYN from clientes where idLocalidad = 1
select DNI,AYN from clientes where idLocalidad <> 2
select DNI,AYN from clientes where idLocalidad = 1 and DNI > 22452000
select * from localidad where idLocalidad between 2 and 4
select * from localidad where NombreLoc between 'A' and 'E'
select * from clientes where FechaNac between '01/01/2000' and '20/04/2025'

select * from clientes where AYN like 'M%'
select * from clientes where AYN like '%n'}
select * from clientes where AYN like '%t%'
select * from clientes where AYN like 'M%t%'

select * from Localidad where NombreLoc in ('La Plata', 'San Miguel', 'Berisso')
select * from Localidad where NombreLoc not in ('La Plata', 'San Miguel', 'Berisso')

select * from Localidad where idLocalidad not in (
		select idLocalidad from Clientes)
select * from Localidad where idLocalidad  in (
		select idLocalidad from Clientes)

select Calculo = count(idLocalidad) * 1000 from localidad

select * from Localidad where idLocalidad not in (
		select count(idLocalidad) from localidad)

select count(idLocalidad) * 1000 as Cantidad from localidad

select TMP.Cantidad  from 
(select count(idLocalidad) as Cantidad from localidad) TMP

sum()
avg()
Max()
Min()
select C.DNI from Clientes C
Select Max(idLocalidad) as maximo from Localidad 

select count(idLocalidad) from Clientes

select idLocalidad, 
cantidad = count(DNI), Maximo = Max(DNI) from clientes 
group by idLocalidad

select idLocalidad, 
cantidad = count(DNI), Maximo = Max(DNI) 
from clientes 
group by idLocalidad
having count(DNI) > 1



