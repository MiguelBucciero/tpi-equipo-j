USE DEPORTE_WEB_DB;
GO

INSERT INTO ALUMNOS 
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email)
VALUES
    ('Juan', 'Pérez', '12345678', '2000-05-15', 'Masculino', 'Calle Falsa 123', '170', 70.5, 'pass1234', 'juan.perez@example.com');

INSERT INTO ALUMNOS 
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Altura, Peso, Pass, Email)
VALUES
    ('María', 'González', '87654321', '1995-12-20', 'Femenino', 'Av. Principal 456', '160', 55.3, 'pass5678', 'maria.gonzalez@example.com');

INSERT INTO ENTRENADORES 
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Pass, EsAdmin, Email)
VALUES
    ('Carlos', 'Ramírez', '45678912', '1980-07-10', 'Masculino', 'Calle Los Cedros 234', 'admin2023', 1, 'carlos.ramirez@example.com');

INSERT INTO ENTRENADORES 
    (Nombre, Apellido, Dni, FechaNacimiento, Sexo, Domicilio, Pass, EsAdmin, Email)
VALUES
    ('Lucía', 'Fernández', '98765432', '1992-03-25', 'Femenino', 'Av. Las Palmas 678', 'trainer567', 1, 'lucia.fernandez@example.com');

