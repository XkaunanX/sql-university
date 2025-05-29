USE ventas_e;
GO

/*5) Poblar la tabla usuario y sus relaciones:
Juan Barnetche, Miguel Valcaneras y Analia Zamora, trabajan y están registrados en la Empresa
Belpe.
Maximiliano Moreno y Tamara Castro, trabajan en CGO.
Miguel Suarez es el único usuario registrado en Az Motor.
Enrique Moreno, Lionel Galo y Esperanza Mendez, trabajan en Goicoechea. Pero, ésta última,
Esperanza, también hace trabajos y está registrada en Vaer S. A.
Albocar, tiene dos usuarios. Uno es Maximiliano Gonzalez, y el otro Martín Perez.
Para llevar a cabo la acción, inventar los datos personales y de login de cada uno de los usuarios que se
vayan creando.*/

-- Insertar usuarios con datos ficticios
-- Usuarios de Belpe
INSERT INTO Usuario (AyN, Password, Email, Domicilio, Telefono)
VALUES 
    ('Juan Barnetche', 'Ju4nB@rn', 'juan.barnetche@belpe.com', 'Calle 123, La Plata', '221 111-1111'),
    ('Miguel Valcaneras', 'M1gu3lV@l', 'miguel.valcaneras@belpe.com', 'Av. 7 720, La Plata', '221 222-2222'),
    ('Analia Zamora', 'An4l1@Z@m', 'analia.zamora@belpe.com', 'Calle 42 1500, La Plata', '221 333-3333');

-- Usuarios de CGO
INSERT INTO Usuario (AyN, Password, Email, Domicilio, Telefono)
VALUES 
    ('Maximiliano Moreno', 'M4x1M0r3n0', 'maximiliano.moreno@districgo.com', 'Diag. 80 1200, La Plata', '221 444-4444'),
    ('Tamara Castro', 'T4m4r4C45tr0', 'tamara.castro@districgo.com', 'Av. 13 850, La Plata', '221 555-5555');

-- Usuario de AZ MOTOR
INSERT INTO Usuario (AyN, Password, Email, Domicilio, Telefono)
VALUES 
    ('Miguel Suarez', 'M1gu3lS04r3z', 'miguel.suarez@azmotor.com', 'Calle 200 4500, La Plata', '221 666-6666');

-- Usuarios de Goicoechea
INSERT INTO Usuario (AyN, Password, Email, Domicilio, Telefono)
VALUES 
    ('Enrique Moreno', '3nr1qu3M0r', 'enrique.moreno@goicoechea.com', 'Av. 25 3100, La Plata', '221 777-7777'),
    ('Lionel Galo', 'L10n3lG4l0', 'lionel.galo@goicoechea.com', 'Calle 36 2800, La Plata', '221 888-8888'),
    ('Esperanza Mendez', '3sp3r4nz4M3n', 'esperanza.mendez@goicoechea.com', 'Av. 60 1900, La Plata', '221 999-9999');

-- Usuarios de Albocar
INSERT INTO Usuario (AyN, Password, Email, Domicilio, Telefono)
VALUES 
    ('Maximiliano Gonzalez', 'M4x1G0nz4l3z', 'maximiliano.gonzalez@albocar.com', 'Calle 67 500, La Plata', '221 000-0000'),
    ('Martín Perez', 'M4rt1nP3r3z', 'martin.perez@albocar.com', 'Av. 72 3300, La Plata', '221 101-0101');

-- Establecer relaciones UsuarioXEmpresa
-- Obtener IDs de empresas
DECLARE @BelpeID UNIQUEIDENTIFIER, @CGOID UNIQUEIDENTIFIER, @AzMotorID UNIQUEIDENTIFIER,
        @GoicoecheaID UNIQUEIDENTIFIER, @VaersaID UNIQUEIDENTIFIER, @AlbocarID UNIQUEIDENTIFIER;

SELECT @BelpeID = idEmpresa FROM Empresa WHERE RazonSocial = 'BELPE';
SELECT @CGOID = idEmpresa FROM Empresa WHERE RazonSocial = 'CGO';
SELECT @AzMotorID = idEmpresa FROM Empresa WHERE RazonSocial = 'AZ MOTOR';
SELECT @GoicoecheaID = idEmpresa FROM Empresa WHERE RazonSocial = 'GOLCOECHEA';
SELECT @VaersaID = idEmpresa FROM Empresa WHERE RazonSocial = 'AUTOCLIPS VAER SA';
SELECT @AlbocarID = idEmpresa FROM Empresa WHERE RazonSocial = 'ALBOCAR';

-- Relaciones Usuario-Empresa
-- Belpe (3 usuarios)
INSERT INTO UsuarioXEmpresa (Token, idEmpresa)
SELECT Token, @BelpeID FROM Usuario 
WHERE AyN IN ('Juan Barnetche', 'Miguel Valcaneras', 'Analia Zamora');

-- CGO (2 usuarios)
INSERT INTO UsuarioXEmpresa (Token, idEmpresa)
SELECT Token, @CGOID FROM Usuario 
WHERE AyN IN ('Maximiliano Moreno', 'Tamara Castro');

-- AZ MOTOR (1 usuario)
INSERT INTO UsuarioXEmpresa (Token, idEmpresa)
SELECT Token, @AzMotorID FROM Usuario 
WHERE AyN = 'Miguel Suarez';

-- Goicoechea (3 usuarios)
INSERT INTO UsuarioXEmpresa (Token, idEmpresa)
SELECT Token, @GoicoecheaID FROM Usuario 
WHERE AyN IN ('Enrique Moreno', 'Lionel Galo', 'Esperanza Mendez');

-- Esperanza Mendez tambien en Vaer SA
INSERT INTO UsuarioXEmpresa (Token, idEmpresa)
SELECT Token, @VaersaID FROM Usuario 
WHERE AyN = 'Esperanza Mendez';

-- Albocar (2 usuarios)
INSERT INTO UsuarioXEmpresa (Token, idEmpresa)
SELECT Token, @AlbocarID FROM Usuario 
WHERE AyN IN ('Maximiliano Gonzalez', 'Martín Perez');

-- Verificar datos insertados
SELECT u.AyN, e.RazonSocial 
FROM Usuario u
JOIN UsuarioXEmpresa uxe ON u.Token = uxe.Token
JOIN Empresa e ON uxe.idEmpresa = e.idEmpresa
ORDER BY e.RazonSocial, u.AyN;