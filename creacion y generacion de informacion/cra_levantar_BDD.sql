-- Crear BDD
CREATE DATABASE cra;
GO

USE cra;
GO

-- Entidades Fuertes
CREATE TABLE certificado
	(id_certificado int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_certificado varchar(100) NOT NULL,
	descripcion_certificado varchar(100) NULL,
	fecha_emision datetime2);
GO

CREATE TABLE pais
	(id_pais int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_pais varchar(100) NOT NULL);
GO

CREATE TABLE especialidad
	(id_especialidad int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_especialidad varchar(100) NOT NULL);
GO

CREATE TABLE tipo_actividad
	(id_tipo_actividad int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_tipo_actividad varchar(100) NOT NULL,
	descripcion_tipo_actividad varchar(100) NULL);
GO

CREATE TABLE modalidad
	(id_modalidad int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_modalidad varchar(100) NOT NULL,
	descripcion_modalidad varchar(100) NULL);
GO

CREATE TABLE estado
	(id_estado int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_estado varchar(100) NOT NULL,
	descripcion_estado varchar(100) NULL);
GO

CREATE TABLE gravedad
	(id_nivel_gravedad int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion_gravedad varchar(100) NOT NULL);
GO

CREATE TABLE medio
	(id_medio int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_medio varchar(100) NOT NULL,
	descripcion_medio varchar(100) NULL);
GO

CREATE TABLE unidad
	(id_unidad int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_unidad varchar(100) NOT NULL,
	abreviatura varchar(9) NOT NULL);
GO

CREATE TABLE tipo_detalle_donacion
	(id_tipo_detalle int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_detalle varchar(100) NOT NULL,
	descripcion_detalle varchar(100) NULL);
GO

CREATE TABLE rol
	(id_rol int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre_rol varchar(100) NOT NULL,
	descripcion_rol varchar(100) NULL);
GO

-- Entidades Debiles
CREATE TABLE provincia
	(id_provincia int IDENTITY(1,1) NOT NULL,
	nombre_provincia varchar(100) NOT NULL,
	id_pais int NOT NULL,
	PRIMARY KEY (id_provincia), -- Como restriccion
	FOREIGN KEY (id_pais) REFERENCES pais(id_pais));
GO

CREATE TABLE ciudad
	(id_ciudad int IDENTITY(1,1) NOT NULL,
	nombre_ciudad varchar(100) NOT NULL,
	id_provincia int NOT NULL,
	codigo_postal varchar(100) NULL,
	PRIMARY KEY (id_ciudad),
	FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia));
GO

CREATE TABLE localizacion_geografica
	(id_localizacion int IDENTITY(1,1) NOT NULL,
	punto geography NULL,
	descripcion varchar(100) NULL,
	id_ciudad int NOT NULL,
	PRIMARY KEY(id_localizacion),
	FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad));
GO

CREATE TABLE nacionalidad
	(id_nacionalidad int IDENTITY(1,1) NOT NULL,
	nombre_nacionalidad varchar(100) NOT NULL,
	id_pais int NOT NULL,
	PRIMARY KEY (id_nacionalidad),
	FOREIGN KEY (id_pais) REFERENCES pais(id_pais));
GO

CREATE TABLE voluntario
	(dni_voluntario int NOT NULL,
	nombre_voluntario varchar(100) NOT NULL,
	apellido_voluntario varchar(100) NOT NULL,
	calle varchar(100) NULL,
	numero varchar(9) NULL,
	id_ciudad int NOT NULL,
	fecha_nacimiento datetime2 NOT NULL,
	id_nacionalidad int NOT NULL,
	correo varchar(100) NOT NULL,
	id_estado int NOT NULL,
	PRIMARY KEY(dni_voluntario),
	FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_nacionalidad) REFERENCES nacionalidad(id_nacionalidad),
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado));
GO

CREATE TABLE personal_remunerado
	(dni_personal_remunerado int NOT NULL,
	nombre_personal_remunerado varchar(100) NOT NULL,
	apellido_personal_remunerado varchar(100) NOT NULL,
	calle varchar(100) NULL,
	numero varchar(100) NULL,
	id_ciudad int NOT NULL,
	fecha_nacimiento datetime2 NOT NULL,
	id_nacionalidad int NOT NULL,
	correo varchar(100) NOT NULL,
	id_estado int NOT NULL,
	PRIMARY KEY(dni_personal_remunerado),
	FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_nacionalidad) REFERENCES nacionalidad(id_nacionalidad),
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado));
GO

CREATE TABLE telefono_voluntario
	(dni_voluntario int NOT NULL,
	numero varchar(100) NOT NULL,
	PRIMARY KEY(dni_voluntario, numero),
	FOREIGN KEY (dni_voluntario) REFERENCES voluntario(dni_voluntario));
GO

CREATE TABLE telefono_personal_remunerado
	(dni_personal_remunerado int NOT NULL,
	numero varchar(100) NOT NULL,
	PRIMARY KEY(dni_personal_remunerado, numero),
	FOREIGN KEY (dni_personal_remunerado) REFERENCES personal_remunerado(dni_personal_remunerado));
GO

CREATE TABLE voluntario_certificado
	(dni_voluntario int NOT NULL, 
	id_certificado int NOT NULL,
	PRIMARY KEY(dni_voluntario, id_certificado),
	FOREIGN KEY (dni_voluntario) REFERENCES voluntario(dni_voluntario),
	FOREIGN KEY (id_certificado) REFERENCES certificado(id_certificado));
GO

CREATE TABLE personal_remunerado_certificado
	(dni_personal_remunerado int NOT NULL, 
	id_certificado int NOT NULL,
	PRIMARY KEY(dni_personal_remunerado, id_certificado),
	FOREIGN KEY (dni_personal_remunerado) REFERENCES personal_remunerado(dni_personal_remunerado),
	FOREIGN KEY (id_certificado) REFERENCES certificado(id_certificado));
GO

CREATE TABLE personal_remunerado_especialidad
	(dni_personal_remunerado int NOT NULL,
	id_especialidad int NOT NULL,
	numero_matricula varchar(100) NULL,
	PRIMARY KEY(dni_personal_remunerado, id_especialidad),
	FOREIGN KEY(dni_personal_remunerado) REFERENCES personal_remunerado(dni_personal_remunerado),
	FOREIGN KEY(id_especialidad) REFERENCES especialidad(id_especialidad));
GO

CREATE TABLE actividad
	(id_actividad int IDENTITY(1,1) NOT NULL,
	fecha_inicio datetime2 NOT NULL,
	fecha_fin datetime2 NULL,
	nombre_actividad varchar(100) NOT NULL,
	id_tipo_actividad int NOT NULL,
	id_modalidad int NOT NULL,
	descripcion varchar(100) NULL,
	PRIMARY KEY(id_actividad),
	FOREIGN KEY(id_tipo_actividad) REFERENCES tipo_actividad(id_tipo_actividad), -- FOREIGN KEY() REFERENCES ()
	FOREIGN KEY(id_modalidad) REFERENCES modalidad(id_modalidad));
GO

CREATE TABLE proyecto
	(id_actividad int NOT NULL,
	id_estado int NOT NULL,
	id_localizacion int NOT NULL,
	presupuesto money,
	PRIMARY KEY(id_actividad),
	FOREIGN KEY(id_actividad) REFERENCES actividad(id_actividad),
	FOREIGN KEY(id_estado) REFERENCES estado(id_estado),
	FOREIGN KEY(id_localizacion) REFERENCES localizacion_geografica(id_localizacion));
GO

CREATE TABLE emergencia
	(id_actividad int NOT NULL,
	id_nivel_gravedad int NOT NULL,
	cantidad_evacuados int NULL,
	cantidad_fatales int NULL,
	PRIMARY KEY(id_actividad),
	FOREIGN KEY(id_actividad) REFERENCES actividad(id_actividad),
	FOREIGN KEY(id_nivel_gravedad) REFERENCES gravedad(id_nivel_gravedad));
GO

CREATE TABLE donacion
	(nro_donacion int IDENTITY(1,1) NOT NULL,
	fecha datetime2 NOT NULL,
	id_medio int NOT NULL,
	id_actividad int NOT NULL,
	dni_voluntario int NOT NULL,
	PRIMARY KEY(nro_donacion),
	FOREIGN KEY(id_actividad) REFERENCES emergencia(id_actividad),
	FOREIGN KEY(dni_voluntario) REFERENCES voluntario(dni_voluntario),
	FOREIGN KEY(id_medio) REFERENCES medio(id_medio));
GO

CREATE TABLE detalle_donacion
	(nro_donacion int NOT NULL,
	id_tipo_detalle int NOT NULL,
	cantidad int CHECK (cantidad >= 0) NOT NULL,
	fecha_vencimiento datetime2 NULL,
	id_unidad int NOT NULL,
	descripcion varchar(100) NULL,
	PRIMARY KEY (nro_donacion, id_tipo_detalle),
	FOREIGN KEY(nro_donacion) REFERENCES donacion(nro_donacion),
	FOREIGN KEY(id_tipo_detalle) REFERENCES tipo_detalle_donacion(id_tipo_detalle),
	FOREIGN KEY(id_unidad) REFERENCES unidad(id_unidad));
GO

CREATE TABLE voluntario_actividad
	(dni_voluntario int NOT NULL,
	id_actividad int NOT NULL,
	id_rol int NOT NULL,
	PRIMARY KEY(dni_voluntario, id_actividad),
	FOREIGN KEY(dni_voluntario) REFERENCES voluntario(dni_voluntario),
	FOREIGN KEY(id_actividad) REFERENCES actividad(id_actividad),
	FOREIGN KEY(id_rol) REFERENCES rol(id_rol));
GO

CREATE TABLE personal_remunerado_actividad
	(dni_personal_remunerado int NOT NULL,
	id_actividad int NOT NULL,
	id_rol int NOT NULL,
	PRIMARY KEY(dni_personal_remunerado, id_actividad),
	FOREIGN KEY(dni_personal_remunerado) REFERENCES personal_remunerado(dni_personal_remunerado),
	FOREIGN KEY(id_actividad) REFERENCES actividad(id_actividad),
	FOREIGN KEY(id_rol) REFERENCES rol(id_rol));
GO