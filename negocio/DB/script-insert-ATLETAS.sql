USE DEPORTE_WEB_DB;
GO

INSERT INTO ATLETAS
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email, TipoUser)
VALUES
    ('Juan', 'Pérez', '12345678', '2000-05-15', 'Masculino', 'Calle Falsa 123', '170', 70.5, 'pass1234', 'juan.perez@example.com', 3);

INSERT INTO ATLETAS
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email, TipoUser)
VALUES
    ('María', 'González', '87654321', '1995-12-20', 'Femenino', 'Av. Principal 456', '160', 55.3, 'pass5678', 'maria.gonzalez@example.com', 3);

INSERT INTO ATLETAS
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email, TipoUser)
VALUES
    ('Carlos', 'Ramírez', '45678912', '1980-07-10', 'Masculino', 'Calle Los Cedros 234', '170', 72, 'admin2023', 'carlos.ramirez@example.com', 1);

INSERT INTO ATLETAS
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email, TipoUser)
VALUES
    ('Lucía', 'Fernández', '98765432', '1992-03-25', 'Femenino', 'Av. Las Palmas 678', '160', 54, 'trainer567', 'lucia.fernandez@example.com', 2);
