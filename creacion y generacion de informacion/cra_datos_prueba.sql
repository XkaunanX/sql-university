USE cra;
GO

-- Datos de Prueba Entidades Fuertes
INSERT INTO certificado(nombre_certificado, descripcion_certificado, fecha_emision)
VALUES
('Primeros Auxilios', 'Curso basico dictado en sede central', '2024-03-15'),
('Capacitacion RCP', 'Reanimacion cardiopulmonar para voluntarios', '2024-06-10'),
('Manejo de Desastres', 'Taller intensivo sobre actuacion ante desastres naturales', '2024-04-22'),
('Prevencion de Incendios', 'Curso teorico-practico en simulador de emergencias', '2023-12-01'),
('Atencion Prehospitalaria', 'Formacion inicial para primeros respondedores', '2023-11-18'),
('Capacitacion en VIH', 'Sensibilizacion y prevencion del VIH/SIDA', '2024-02-28'),
('Salud Comunitaria', 'Promocion de habitos saludables en barrios vulnerables', '2024-01-12'),
('Logistica Humanitaria', 'Gestion de recursos y ayuda en zonas afectadas', '2024-05-07'),
('Emergencias Sanitarias', 'Protocolo de actuacion frente a brotes epidemicos', '2023-09-25'),
('Perspectiva de Genero', 'Capacitacion obligatoria Ley Micaela', '2024-03-08');
GO


INSERT INTO pais (nombre_pais)
VALUES 
('Argentina'),
('Uruguay'),
('Chile');
GO

INSERT INTO especialidad (nombre_especialidad)
VALUES 
('Enfermeria'),
('Logistica'),
('Psicologia'),
('Comunicacion Humanitaria'),
('Primeros Auxilios'),
('Capacitacion Comunitaria'),
('Gestión de Riesgos'),
('Medicina General'),
('Salud Mental'),
('Respuesta ante Emergencias');
GO


INSERT INTO tipo_actividad (nombre_tipo_actividad, descripcion_tipo_actividad)
VALUES 
('Capacitacion', 'Formacion interna para voluntarios'),
('Terremoto', 'Intervencion en caso de terremoto'),
('Accidente de avion', 'Atencion en accidente aereo'),
('Construccion nuevo almacen', 'Proyecto para crear un nuevo almacen'),
('Mejora infraestructura', 'Proyecto de mejora y mantenimiento de infraestructura'),
('Evento comunitario', 'Charlas, jornadas, ferias de salud'),
('Incendio forestal', 'Respuesta a emergencia por incendios en zonas rurales'),
('Inundacion urbana', 'Asistencia en zonas afectadas por lluvias e inundaciones'),
('Simulacro', 'Ejercicio de simulacion para preparacion ante emergencias'),
('Campaña de donacion de sangre', 'Recoleccion voluntaria de sangre en la comunidad'),
('Asistencia alimentaria', 'Entrega de alimentos a poblaciones vulnerables'),
('Entrega de kits de higiene', 'Distribucion de articulos basicos de aseo personal'),
('Primeros auxilios en escuelas', 'Capacitacion a estudiantes en tecnicas basicas'),
('Accidente vehicular masivo', 'Intervencion ante choque o colision con multiples victimas'),
('Evaluacion de daños', 'Relevamiento post-desastre para determinar necesidades'),
('Formacion en salud mental', 'Capacitacion sobre contencion psicologica en crisis'),
('Taller de derechos humanos', 'Formacion sobre principios y valores humanitarios'),
('Apoyo en centros de evacuados', 'Asistencia en refugios temporales'),
('Campaña de prevencion', 'Actividad preventiva ante enfermedades o desastres'),
('Capacitacion en RCP', 'Entrenamiento en reanimacion cardiopulmonar para la comunidad');
GO


INSERT INTO modalidad (nombre_modalidad, descripcion_modalidad)
VALUES 
('Presencial', 'Requiere asistencia fisica'),
('Virtual', 'Se dicta a distancia'),
('Mixta', 'Combinacion de presencial y virtual');
GO

INSERT INTO estado (nombre_estado, descripcion_estado)
VALUES 
('Activo', 'Participacion actual en actividades'),
('Inactivo', 'No participa en el presente'),
('Suspendido', 'No puede participar por motivos disciplinarios');
GO

INSERT INTO gravedad (descripcion_gravedad)
VALUES 
('Leve'),
('Moderada'),
('Grave'),
('Critica');
GO

INSERT INTO medio (nombre_medio, descripcion_medio)
VALUES 
('Efectivo', 'Donacion presencial con dinero'),
('Transferencia', 'Transferencia bancaria'),
('Donacion en especie', 'Alimentos, medicamentos, ropa');
GO

INSERT INTO unidad (nombre_unidad, abreviatura)
VALUES 
('Litros', 'L'),
('Kilogramos', 'Kg'),
('Unidades', 'U'),
('Cajas', 'Cj');
GO

INSERT INTO tipo_detalle_donacion (nombre_detalle, descripcion_detalle)
VALUES 
('Alimentos no perecederos', 'Productos alimenticios que no requieren refrigeracion y tienen larga duracion'),
('Medicamentos', 'Insumos farmaceuticos destinados a la atencion sanitaria primaria'),
('Ropa de abrigo', 'Vestimenta destinada a proteger del frio en situaciones de emergencia'),
('Insumos de higiene', 'Productos para el aseo personal y prevencion de enfermedades'),
('Mantas y frazadas', 'Elementos textiles utilizados para abrigar en emergencias'),
('Agua embotellada', 'Agua potable envasada para consumo inmediato'),
('Pañales descartables', 'Pañales para bebes y adultos en situaciones de vulnerabilidad'),
('Productos de limpieza', 'Articulos para desinfeccion y limpieza de espacios'),
('Calzado', 'Zapatos, zapatillas y botas para uso general o especifico'),
('Kit de primeros auxilios', 'Conjunto basico de insumos para emergencias menores'),
('Leche en polvo', 'Alimento lacteo no perecedero para niños y adultos'),
('Alimentos para bebes', 'Papillas, cereales infantiles y otros productos'),
('Juguetes', 'Elementos recreativos destinados a niñas y niños en crisis'),
('Utensilios de cocina', 'Ollas, platos, vasos y cubiertos para uso comunitario'),
('Herramientas manuales', 'Palas, martillos, sierras y otros para tareas de emergencia'),
('Mobiliario basico', 'Camas, mesas y sillas para centros de evacuacion'),
('Material escolar', 'Cuadernos, lapices y mochilas para apoyar la educacion'),
('Ropa interior nueva', 'Prendas basicas nuevas para personas en albergues'),
('Mascarillas y guantes', 'Elementos de proteccion personal para situaciones sanitarias'),
('Protesis o elementos ortopedicos', 'Sillas de ruedas, muletas y similares para personas con movilidad reducida');
GO


INSERT INTO rol (nombre_rol, descripcion_rol)
VALUES 
('Coordinador', 'Responsable de un proyecto o area'),
('Voluntario', 'Participante activo sin remuneracion'),
('Profesional', 'Personal tecnico contratado'),
('Administrador', 'Encargado de tareas administrativas'),
('Logista', 'Encargado de la gestion de suministros y transporte'),
('Psicologo', 'Especialista en atencion emocional y contencion'),
('Paramedico', 'Profesional de atencion prehospitalaria'),
('Comunicador', 'Encargado de prensa y redes sociales'),
('Responsable de Almacen', 'Supervisa inventario y logistica en deposito'),
('Conductor', 'Maneja vehiculos oficiales para traslados'),
('Capacitador', 'Brinda formacion a voluntarios y personal'),
('Evaluador de daños', 'Realiza relevamientos post-desastre'),
('Referente Territorial', 'Articula con comunidades y autoridades locales'),
('Tesorero', 'Encargado del control financiero'),
('Responsable de Recursos Humanos', 'Gestiona perfiles, altas y bajas'),
('Enfermero', 'Brinda asistencia sanitaria en campo'),
('Promotor de Salud', 'Realiza campañas y talleres comunitarios'),
('Traductor', 'Facilita comunicacion en distintos idiomas'),
('Responsable de Donaciones', 'Gestiona recepcion y clasificacion de donaciones'),
('Encargado de Infraestructura', 'Coordina obras y mantenimiento edilicio');
GO


-- Datos de Prueba Entidades Debiles

INSERT INTO provincia (nombre_provincia, id_pais)
VALUES 
('Buenos Aires', 1),        -- Argentina
('Córdoba', 1),
('Santa Fe', 1),
('Mendoza', 1),
('Tucumán', 1),
('Chubut', 1);
GO

INSERT INTO ciudad (nombre_ciudad, id_provincia, codigo_postal) -- Auto incremetal, el orden importa
VALUES
-- Buenos Aires
('La Plata', 1, '1900'),
('Mar del Plata', 1, '7600'),
('Las Flores', 1, '7200'),

-- Cordoba
('Córdoba Capital', 2, '5000'),
('Villa María', 2, '5900'),

-- Santa Fe
('Rosario', 3, '2000'),
('Santa Fe Capital', 3, '3000'),

-- Mendoza
('Mendoza Capital', 4, '5500'),
('San Rafael', 4, '5600'),

-- Tucuman
('San Miguel de Tucumán', 5, '4000'),
('Tafí Viejo', 5, '4103'),

-- Chubut
('Rawson', 6, '9103'),
('Puerto Madryn', 6, '9120');
GO

INSERT INTO nacionalidad (nombre_nacionalidad, id_pais)
VALUES 
('Argentina', 1),
('Uruguaya', 2),
('Chilena', 3);
GO

INSERT INTO localizacion_geografica (punto, descripcion, id_ciudad)
VALUES
(geography::Point(-34.9214, -57.9544, 4326), 'Sede central La Plata', 1),
(geography::Point(-36.0381, -60.0242, 4326), 'Delegacion Las Flores', 3),
(geography::Point(-32.9468, -60.6393, 4326), 'Filial Rosario', 6),
(geography::Point(-31.4201, -64.1888, 4326), 'Base Cordoba', 4);
GO

INSERT INTO voluntario (dni_voluntario, nombre_voluntario, apellido_voluntario, calle, numero, id_ciudad, fecha_nacimiento, id_nacionalidad, correo, id_estado)
VALUES 
(35123456, 'Lucia', 'Gomez', 'Calle 12', '1450', 1, '1990-04-12', 1, 'lucia.gomez@gmail.com', 1),
(38987654, 'Juan', 'Perez', 'Av. San Martin', '230', 3, '1985-11-05', 1, 'juanp@cruzroja.org', 1),
(37111222, 'Sofia', 'Lopez', 'Mitre', '1050', 4, '1993-07-22', 2, 'sofialopez@redsolidaria.org', 2),
(36222333, 'Carlos', 'Mendez', 'Alsina', '873', 2, '1988-01-17', 1, 'cmendez@voluntario.org', 3),
(40111223, 'Valeria', 'Cruz', 'Esmeralda', '321', 1, '1991-12-03', 2, 'val.cruz@gmail.com', 1),
(37555666, 'Marcos', 'Villalba', 'Santa Fe', '654', 3, '1994-06-14', 1, 'mvillalba@correo.org', 1),
(38222999, 'Julieta', 'Ramirez', 'San Juan', '998', 2, '1990-03-21', 3, 'jramirez@ong.org', 2),
(39555777, 'Rocio', 'Ibarra', 'Catamarca', '145', 4, '1995-10-09', 1, 'rocioib@correo.org', 1),
(36789001, 'Federico', 'Bravo', 'Tucuman', '500', 1, '1989-08-15', 2, 'fbravo@vol.org', 2),
(37666123, 'Camila', 'Fernandez', 'La Rioja', '660', 2, '1992-04-18', 1, 'camif@cruzroja.org', 1),
(38444999, 'Nicolas', 'Diaz', 'Mendoza', '210', 3, '1993-02-02', 3, 'ndiaz@cra.org.ar', 3),
(39123456, 'Agustina', 'Ruiz', 'San Luis', '101', 4, '1991-05-27', 1, 'aruiz@correo.org', 2),
(37888777, 'Martina', 'Sosa', 'Neuquen', '301', 1, '1987-07-30', 1, 'msosa@ong.org', 1),
(36666999, 'Tomas', 'Paredes', 'Jujuy', '199', 2, '1990-09-09', 2, 'tparedes@voluntario.org', 1),
(39222334, 'Brenda', 'Gimenez', 'Formosa', '180', 3, '1988-12-11', 1, 'brendag@redsolidaria.org', 2),
(35777788, 'Leonel', 'Moreno', 'Chaco', '888', 4, '1985-03-19', 2, 'lmoreno@correo.com', 1),
(37444111, 'Carla', 'Dominguez', 'Misiones', '765', 1, '1994-01-10', 1, 'cdominguez@cra.org.ar', 1),
(36555123, 'Nahuel', 'Coronel', 'Entre Rios', '543', 2, '1986-06-23', 3, 'ncoronel@vol.org', 3),
(37999888, 'Milagros', 'Acosta', 'Corrientes', '678', 3, '1990-08-02', 1, 'macosta@cruzroja.org', 2),
(39000123, 'Alejandro', 'Molina', 'Santa Cruz', '432', 4, '1989-11-25', 1, 'amolina@correo.org', 1);
GO


INSERT INTO personal_remunerado (dni_personal_remunerado, nombre_personal_remunerado, apellido_personal_remunerado, calle, numero, id_ciudad, fecha_nacimiento, id_nacionalidad, correo, id_estado)
VALUES 
(30111222, 'Ana', 'Martinez', 'Belgrano', '1200', 1, '1980-02-14', 1, 'ana.martinez@cra.org.ar', 1),
(32233445, 'Diego', 'Fernandez', 'Corrientes', '455', 2, '1975-08-30', 3, 'dfernandez@cra.org.ar', 1),
(31122334, 'Mariela', 'Suarez', 'Rivadavia', '934', 3, '1982-06-19', 1, 'msuarez@cra.org.ar', 2),
(35444111, 'Ezequiel', 'Barrios', 'Independencia', '204', 4, '1979-09-01', 2, 'ebarrios@cra.org.ar', 3),
(31345678, 'Lautaro', 'Ortiz', 'Mitre', '345', 1, '1978-01-12', 1, 'lortiz@cra.org.ar', 1),
(32889977, 'Jimena', 'Diaz', 'Catamarca', '776', 2, '1981-04-30', 2, 'jdiaz@cra.org.ar', 1),
(30988765, 'Hernan', 'Quiroga', 'Tucuman', '332', 3, '1980-07-03', 3, 'hquiroga@cra.org.ar', 2),
(31665544, 'Paula', 'Estrada', 'San Juan', '777', 4, '1977-12-28', 1, 'pestrada@cra.org.ar', 1),
(32011223, 'Gustavo', 'Bianchi', 'Avellaneda', '111', 1, '1983-09-09', 1, 'gbianchi@cra.org.ar', 3),
(32555888, 'Florencia', 'Rivas', 'Alsina', '221', 2, '1976-06-11', 1, 'frivas@cra.org.ar', 1),
(31888444, 'Martin', 'Castro', 'Patricios', '456', 3, '1979-11-20', 2, 'mcastro@cra.org.ar', 2),
(32333455, 'Cecilia', 'Herrera', 'Lavalle', '299', 4, '1982-03-17', 1, 'cherrera@cra.org.ar', 1),
(32666123, 'Rodrigo', 'Luna', 'Velez', '190', 1, '1975-08-08', 1, 'rluna@cra.org.ar', 2),
(31998877, 'Lorena', 'Silva', 'Rosario', '789', 2, '1984-05-15', 2, 'lsilva@cra.org.ar', 1),
(33122334, 'Ignacio', 'Serrano', 'Libertad', '420', 3, '1973-10-10', 3, 'iserrano@cra.org.ar', 3),
(33000999, 'Daniela', 'Benitez', 'Maipu', '666', 4, '1976-04-04', 1, 'dbenitez@cra.org.ar', 1),
(33444555, 'Fabian', 'Godoy', 'Alberdi', '345', 1, '1980-12-12', 2, 'fgodoy@cra.org.ar', 2),
(33555999, 'Natalia', 'Peralta', 'Mitre', '909', 2, '1985-07-07', 1, 'nperalta@cra.org.ar', 1),
(33666112, 'Emilio', 'Navarro', 'Belgrano', '123', 3, '1981-09-19', 1, 'enavarro@cra.org.ar', 3),
(33777223, 'Adriana', 'Funes', 'Colon', '302', 4, '1983-02-02', 2, 'afunes@cra.org.ar', 1);
GO


INSERT INTO telefono_voluntario (dni_voluntario, numero)
VALUES
-- Lucia Gomez (35123456)
(35123456, '+54 9 221 654-3210'),  -- Teléfono principal
(35123456, '+54 9 11 2345-6789'),  -- Teléfono secundario

-- Juan Perez (38987654)
(38987654, '+54 9 11 9988-7766'),  -- Teléfono móvil

-- Sofia Lopez (37111222)
(37111222, '+598 91 456-789'),      -- Teléfono internacional (Uruguay)

-- Carlos Mendez (36222333)
(36222333, '+54 9 11 1122-3344'),  -- Teléfono móvil

-- Valeria Cruz (40111223)
(40111223, '+54 9 221 432-1000'),  -- Teléfono fijo

-- Marcos Villalba (37555666)
(37555666, '+54 9 11 8888-9999'),  -- Teléfono móvil

-- Julieta Ramirez (38222999)
(38222999, '+54 9 221 765-4321'),  -- Teléfono fijo

-- Rocio Ibarra (39555777)
(39555777, '+54 9 221 111-1111'),  -- Teléfono fijo

-- Federico Bravo (36789001)
(36789001, '+54 9 221 222-2222'),  -- Teléfono fijo

-- Camila Fernandez (37666123)
(37666123, '+54 9 11 4444-4444'),  -- Teléfono móvil

-- Nicolas Diaz (38444999)
(38444999, '+54 9 11 5555-5555'),  -- Teléfono móvil

-- Agustina Ruiz (39123456)
(39123456, '+54 9 11 6666-6666'),  -- Teléfono móvil

-- Martina Sosa (37888777)
(37888777, '+54 9 11 7777-7777'),  -- Teléfono móvil

-- Tomas Paredes (36666999)
(36666999, '+54 9 11 8888-8888'),  -- Teléfono móvil

-- Brenda Gimenez (39222334)
(39222334, '+54 9 11 9999-9999'),  -- Teléfono móvil

-- Leonel Moreno (35777788)
(35777788, '+54 9 11 1010-1010'),  -- Teléfono móvil

-- Carla Dominguez (37444111)
(37444111, '+54 9 11 2020-2020');  -- Teléfono móvil
GO

INSERT INTO telefono_personal_remunerado (dni_personal_remunerado, numero)
VALUES
-- Ana Martinez (30111222)
(30111222, '+54 9 221 123-4567'),  -- Teléfono fijo
(30111222, '+54 9 11 8765-4321'),  -- Teléfono móvil

-- Diego Fernandez (32233445)
(32233445, '+56 9 7654-3210'),     -- Teléfono internacional (Chile)

-- Mariela Suarez (31122334)
(31122334, '+54 9 11 3344-5566'),  -- Teléfono móvil

-- Ezequiel Barrios (35444111)
(35444111, '+598 92 112-233'),     -- Teléfono internacional (Uruguay)

-- Lautaro Ortiz (31345678)
(31345678, '+54 9 221 100-1000'),  -- Teléfono fijo

-- Jimena Diaz (32889977)
(32889977, '+54 9 221 200-2000'),  -- Teléfono fijo

-- Hernan Quiroga (30988765)
(30988765, '+54 9 221 300-3000'),  -- Teléfono fijo

-- Paula Estrada (31665544)
(31665544, '+54 9 221 400-4000'),  -- Teléfono fijo

-- Gustavo Bianchi (32011223)
(32011223, '+54 9 221 500-5000'),  -- Teléfono fijo

-- Florencia Rivas (32555888)
(32555888, '+54 9 11 6000-6000'),  -- Teléfono móvil

-- Martin Castro (31888444)
(31888444, '+54 9 11 7000-7000'),  -- Teléfono móvil

-- Cecilia Herrera (32333455)
(32333455, '+54 9 11 8000-8000'),  -- Teléfono móvil

-- Rodrigo Luna (32666123)
(32666123, '+54 9 11 9000-9000'),  -- Teléfono móvil

-- Lorena Silva (31998877)
(31998877, '+54 9 11 0101-0101'),  -- Teléfono móvil

-- Ignacio Serrano (33122334)
(33122334, '+54 9 11 1212-1212'); -- Teléfono móvil
GO

INSERT INTO voluntario_certificado (dni_voluntario, id_certificado)
VALUES
-- Lucia Gomez (35123456) tiene 2 certificados
(35123456, 1),
(35123456, 2),
-- Juan Perez (38987654) tiene 3 certificados
(38987654, 1),
(38987654, 3),
(38987654, 5),
-- Sofia Lopez (37111222) 
(37111222, 4),
(37111222, 7),
-- Carlos Mendez (36222333)
(36222333, 2),
(36222333, 6),
-- Valeria Cruz (40111223)
(40111223, 3),
-- Marcos Villalba (37555666)
(37555666, 8),
-- Julieta Ramirez (38222999)
(38222999, 9),
-- Rocio Ibarra (39555777)
(39555777, 10),
-- Federico Bravo (36789001)
(36789001, 5),
-- Camila Fernandez (37666123)
(37666123, 1),
-- Nicolas Diaz (38444999)
(38444999, 2),
-- Agustina Ruiz (39123456)
(39123456, 4),
-- Martina Sosa (37888777)
(37888777, 7),
-- Tomas Paredes (36666999)
(36666999, 8),
-- Brenda Gimenez (39222334)
(39222334, 9),
-- Leonel Moreno (35777788)
(35777788, 10),
-- Carla Dominguez (37444111)
(37444111, 3),
-- Nahuel Coronel (36555123)
(36555123, 6),
-- Milagros Acosta (37999888)
(37999888, 1),
-- Alejandro Molina (39000123)
(39000123, 5);
GO

INSERT INTO personal_remunerado_certificado (dni_personal_remunerado, id_certificado)
VALUES
-- Ana Martinez (30111222)
(30111222, 1),
(30111222, 2),
-- Diego Fernandez (32233445)
(32233445, 3),
(32233445, 5),
-- Mariela Suarez (31122334)
(31122334, 4),
-- Ezequiel Barrios (35444111)
(35444111, 5),
(35444111, 9),
-- Lautaro Ortiz (31345678)
(31345678, 6),
-- Jimena Diaz (32889977)
(32889977, 7),
-- Hernan Quiroga (30988765)
(30988765, 8),
-- Paula Estrada (31665544)
(31665544, 9),
-- Gustavo Bianchi (32011223)
(32011223, 10),
-- Florencia Rivas (32555888)
(32555888, 1),
-- Martin Castro (31888444)
(31888444, 2),
-- Cecilia Herrera (32333455)
(32333455, 3),
-- Rodrigo Luna (32666123)
(32666123, 4),
-- Lorena Silva (31998877)
(31998877, 5),
-- Ignacio Serrano (33122334)
(33122334, 6),
-- Daniela Benitez (33000999)
(33000999, 7),
-- Fabian Godoy (33444555)
(33444555, 8),
-- Natalia Peralta (33555999)
(33555999, 9),
-- Emilio Navarro (33666112)
(33666112, 10),
-- Adriana Funes (33777223)
(33777223, 1);
GO

INSERT INTO personal_remunerado_especialidad (dni_personal_remunerado, id_especialidad, numero_matricula)
VALUES
(30111222, 1, 'ENF1234'), -- Enfermeria
(32233445, 2, 'LOG5678'), -- Logistica
(31122334, 3, 'PSI9012'), -- Psicologia
(35444111, 1, 'ENF4321'), -- Enfermeria
(35444111, 4, 'COM7788'); -- Comunicacion Humanitaria
GO

-- Inserto actividades puras (capacitacion y evento comunitario)
INSERT INTO actividad (fecha_inicio, fecha_fin, nombre_actividad, id_tipo_actividad, id_modalidad, descripcion)
VALUES
('2025-04-20 10:00:00', '2025-04-20 12:00:00', 'Capacitacion primeros auxilios', 1, 1, 'Curso presencial de primeros auxilios basicos'),
('2025-05-05 09:00:00', '2025-05-05 17:00:00', 'Jornada de voluntariado', 6, 2, 'Evento virtual de reclutamiento y formacion'),
('2025-06-15 14:00:00', '2025-06-15 18:00:00', 'Simulacro de evacuacion', 6, 1, 'Prueba de respuesta ante emergencias en instalaciones centrales'),
-- Emergencias
('2025-05-10 15:00:00', '2025-05-15 20:00:00', 'Emergencia Terremoto Zona 1', 2, 1, 'Atencion y evacuacion tras terremoto'),
('2025-06-01 08:00:00', '2025-06-05 18:00:00', 'Emergencia Accidente Avion', 3, 3, 'Control y asistencia en accidente aereo'),
-- Proyectos
('2025-01-10 00:00:00', NULL, 'Construccion nuevo almacen', 4, 2, 'Proyecto para nuevo deposito logistico'),
('2025-02-01 00:00:00', NULL, 'Mejora infraestructura centro', 5, 2, 'Ampliacion y renovacion de instalaciones');
GO

-- Inserto proyectos vinculados
INSERT INTO proyecto (id_actividad, id_estado, id_localizacion, presupuesto)
VALUES
(6, 2, 1, 1000000),
(7, 1, 2, 500000);
GO

-- Inserto emergencias vinculadas
INSERT INTO emergencia (id_actividad, id_nivel_gravedad, cantidad_evacuados, cantidad_fatales)
VALUES
(4, 3, 2000, 50),
(5, 2, 150, 20);
GO

-- Inserto donaciones
INSERT INTO donacion (fecha, id_medio, id_actividad, dni_voluntario)
VALUES
('2025-05-11 10:30:00', 1, 4, 35123456),  -- Donacion para emergencia Terremoto por Lucia Gomez
('2025-06-02 15:45:00', 2, 5, 38987654);  -- Donacion para accidente avion por Juan Perez
GO

-- Inserto detalles de donacion, con tipos de donacion y unidades
INSERT INTO detalle_donacion (nro_donacion, id_tipo_detalle, cantidad, fecha_vencimiento, id_unidad, descripcion)
VALUES
(1, 1, 100, '2025-12-31', 1, 'Agua mineral para emergencia'),
(1, 2, 50, NULL, 2, 'Kits de primeros auxilios'),
(2, 1, 200, '2026-01-15', 1, 'Botellas de agua'),
(2, 3, 30, NULL, 3, 'Ropa de abrigo');
GO

-- Voluntarios asignados a actividades con roles
INSERT INTO voluntario_actividad (dni_voluntario, id_actividad, id_rol)
VALUES
(35123456, 1, 1),  -- Lucia Gomez en actividad 1 con rol 1
(38987654, 2, 2),  -- Juan Perez en actividad 2 con rol 2
(37111222, 3, 3),  -- Sofia Lopez en actividad 3 con rol 3
(36222333, 1, 2);  -- Carlos Mendez en actividad 1 con rol 2
GO

-- Personal remunerado asignado a actividades con roles
INSERT INTO personal_remunerado_actividad (dni_personal_remunerado, id_actividad, id_rol)
VALUES
(30111222, 1, 1),  -- Ana Martinez en actividad 1 con rol 1
(32233445, 2, 2),  -- Diego Fernandez en actividad 2 con rol 2
(31122334, 3, 3),  -- Mariela Suarez en actividad 3 con rol 3
(35444111, 1, 2);  -- Ezequiel Barrios en actividad 1 con rol 2
GO
