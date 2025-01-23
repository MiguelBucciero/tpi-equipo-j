IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DEPORTE_WEB_DB')
BEGIN
    CREATE DATABASE DEPORTE_WEB_DB;
END
GO

USE DEPORTE_WEB_DB;
GO

CREATE TABLE TIPO_ENTRENAMIENTO(
    Id int IDENTITY(1,1) not null,
    Tipo varchar(1000) not null,
    CONSTRAINT PK_ID_TIPO PRIMARY KEY(Id)
);

CREATE TABLE CARRERAS(
    Id int IDENTITY(1,1) not null,
    Distancia decimal not null,
    Modalidad varchar(500) not null,
    Fecha date not null,
    Ubicacion varchar(50),
    CONSTRAINT PK_ID_CARRERA PRIMARY KEY(Id)
);

CREATE TABLE ATLETAS(
    Id int IDENTITY(1,1) not null,
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Dni varchar(50) not null,
    FechaNacimiento date not null,
    Sexo varchar(20) not null,
    Domicilio varchar(30) not null,
    Altura varchar(4) not null,
    Peso decimal not null,
    Pass varchar(20) not null,
    Email varchar(100) not null,
	TipoUser int not null,
    CONSTRAINT PK_ID_ATLETAS PRIMARY KEY(Id)
);

CREATE TABLE PLANIFICACIONES(
    Id int IDENTITY(1,1) not null,
    FechaInicio date not null,
    FechaFin date not null,
    IdEntrenador int not null,
    CONSTRAINT PK_ID_PLANIFICACION PRIMARY KEY(Id),
    CONSTRAINT FK_ID_ENTRENADOR FOREIGN KEY(IdEntrenador) REFERENCES ATLETAS(Id)
);

CREATE TABLE IMAGENES(
    Id int IDENTITY(1,1) not null,
    IdAlumno int not null,
    ImagenUrl varchar(1000),
    CONSTRAINT PK_ID_IMAGEN PRIMARY KEY(Id),
    CONSTRAINT FK_ID_ALUMNO FOREIGN KEY(IdAlumno) REFERENCES ATLETAS(Id)
);

CREATE TABLE ENTRENAMIENTOS(
    Id int IDENTITY(1,1) not null,
    Dia date not null,
    Duracion time not null,
    IdTipo int not null,
    Descripcion varchar(1000) not null,
    Distancia decimal not null,
    Series int not null,
    Repeticiones int not null,
    CONSTRAINT PK_ID_ENTRENAMIENTO PRIMARY KEY(Id),
    CONSTRAINT FK_IdTipo FOREIGN KEY(IdTipo) REFERENCES TIPO_ENTRENAMIENTO(Id)
);

