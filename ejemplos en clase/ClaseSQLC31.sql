-- Crea una base de datos
create database GD2025C31
use GD2025C31
-- crear tabla
create table Mascota 
	(NombreM varchar(40) not null,
	idMascota int not null primary key identity,
	FechaNac date null)
-- Agrego un campo
Alter table Mascota add DNI int not null
alter table Productos add DNI int not null

alter table Productos drop column DNI 

-- borro TODO el contenido de una tabla
delete from Productos
-- insertar informacion en tabla
insert into clientes (DNI,AYN, Domicilio) values(25222444,'Maxi','55 y 9')
insert into clientes (DNI,Domicilio,AYN) values(24524852,'122 y 44','Marcelo')
insert into clientes values(21235244,'Juan','45 y 9')

insert into Mascota (NombreM,DNI) values('Polka',25222444)
insert into Mascota  values('Mora','01/01/2021',25222444)
insert into Mascota  values('Coco','01/01/2024',24524852)
insert into Mascota values('Mona','05/07/2024',21235244)
-- modificar registro
update Mascota set FechaNac = '25/02/2023' where idMascota = 1

insert into Mascota values('Orfila'
						,'05/07/2024',24524852)

insert into Mascota1 Select listacampos from Mascota

-- borra tabla
drop table PRODUCTOS

-- borra contenido de tabla
delete from Mascota where idMascota = 6

select * from clientes
select * from mascota

select DNI,AYN as razonsocial , formula = DNI * 10 from clientes

select DNI,AYN as razonsocial , formula = DNI * 10 from clientes
where DNI > 24000000 and DNI < 25000000

select DNI,AYN as razonsocial , formula = DNI * 10 from clientes
where DNI between 24000000 and 25000000

select DNI,AYN , formula = DNI * 10 from clientes
where AYN between 'E' and 'M'

select * from mascota where Fechanac between '01/01/2023' and '01/01/2025'

select * from mascota where year(fechanac) between 2023 and 2024
order by DNI,FechaNac asc

select * from mascota where NombreM like '%y'

select * from clientes where DNI not in (25222444, 99999999, 24524852)

select * from clientes where DNI not in (select DNI from mascota)

select count(DNI) as Cantidad from clientes
sum()
avg()
Max()
Min()
Year()
Month()
Day()
select distinct DNI from mascota 

select DNI from mascota
group by DNI 

select DNI, cantidad = count(idMascota) 
from Mascota
--where NombreM like 'M%'
group by DNI
having count(idMascota) > 1

