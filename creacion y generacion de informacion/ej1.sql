/*1) Crear una nueva base de datos, cuyo nombre se ventas_e. Dicha base de datos debe tener un usuario,
que tenga permisos de Owner cuyos datos de login sean:
Nombre de usuario: SistemaN
Contraseña: SisN*.*1*/

-- Crear la base de datos ventas_e
CREATE DATABASE ventas_e;
GO

-- Crear el login del servidor
CREATE LOGIN SistemaN WITH PASSWORD = 'SisN*.*1';
GO

-- Usar la base de datos ventas_e
USE ventas_e;
GO

-- Crear el usuario dentro de la base de datos asociado al login
CREATE USER SistemaN FOR LOGIN SistemaN;
GO

-- Asignar rol db_owner al usuario SistemaN
ALTER ROLE db_owner ADD MEMBER SistemaN;
GO