USE ventas_e;
GO

/*3) Respecto de estructura creada en el Ejercicio anterior, se requiere que se realicen los siguientes
cambios:
*/

/*3) a. Eliminar de la tabla usuario el campo Usuario.*/

ALTER TABLE Usuario
DROP COLUMN Usuario;

/*3) b. Agregar un nuevo campo que sea email (varchar(70))*/

ALTER TABLE Usuario
ADD Email VARCHAR(70);

/*3) c. Agregar los campos Domicilio (varchar(150)) y Telefono (varcvhar(30)) en la tabla Usuario.
Luego, agregar los mismos campos a la tabla Empresa.*/

ALTER TABLE Usuario
ADD Domicilio VARCHAR(150),
    Telefono VARCHAR(30);

ALTER TABLE Empresa
ADD Domicilio VARCHAR(150),
    Telefono VARCHAR(30);