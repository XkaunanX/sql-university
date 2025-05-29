USE ventas_e;
GO

/*4) Poblar la tabla Empresa creada en el Ejercicio anterior.*/

-- Insertar datos en la tabla Empresa
INSERT INTO Empresa (idEmpresa, RazonSocial, CUIT, Dominio, Domicilio, Telefono)
VALUES 
    (NEWID(), 'ALBOCAR', '20-24563524-1', 'Albocar', '536 nro. 67', '0221 455-8523'),
    (NEWID(), 'AUTOCLIPS VAER SA', '30-56225853-4', 'Vaersa', 'Ate. Brown 876', '011 4457-7778'),
    (NEWID(), 'GOLCOECHEA', '30-57788523-5', 'Goicoechea', 'Pte. Perón 4521', '0224 4522-3652'),
    (NEWID(), 'CGO', '27-24245652-2', 'Districgo', '46 Nro. 1587', '0221 412-5623'),
    (NEWID(), 'BELPE', '30-45235689-7', 'Belpe', '122 Nro. 4201', '0221 423-2323'),
    (NEWID(), 'DISTRIFFERR', '20-58545565-1', 'Distrifferr', 'Moreau Nro. 524', '0229 45-5623'),
    (NEWID(), 'AZ MOTOR', '30-44215532-5', 'Azmotor', '44 esq. 200 Nro. 4522', '0221 452-5262');