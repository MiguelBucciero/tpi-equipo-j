use DEPORTE_WEB_DB;
GO
create table TIPO_ENTRENAMIENTO(
Id int IDENTITY(1,1) not null,
Tipo varchar(1000) not null,
Constraint PK_ID_TIPO primary key(Id)
)
create table CARRERAS(
Id int IDENTITY(1,1) not null,
Distancia decimal not null,
Modalidad varchar(500) not null,
Fecha date not null,
Ubicacion varchar (50),
constraint PK_ID_CARRERA primary key(Id)
)

create table ALUMNOS(
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
Constraint PK_ID_ALUMNO primary key(Id)
);
create table ENTRENADORES (
Id int IDENTITY(1,1) not null,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Dni varchar(10) not null,
FechaNacimiento date not null,
Sexo varchar(10) not null,
Domicilio varchar(30) not null,
Pass varchar(20) not null,
EsAdmin bit not null,
constraint PK_ID_ENTRENADOR primary key(Id)
);

Create table PLANIFICACIONES(
Id int IDENTITY(1,1) not null,
FechaInicio date not null,
FechaFin date not null,
IdEntrenador int not null,
constraint PK_ID_PLANIFICACION primary key(Id),
constraint FK_ID_ENTRENADOR foreign key(IdEntrenador) references ENTRENADORES(Id)
);

create table IMAGENES(
Id int IDENTITY(1,1) not null,
IdAlumno int not null,
ImagenUrl varchar(1000),
constraint PK_ID_IMAGEN primary key(Id),
constraint FK_ID_ALUMNO foreign key(IdAlumno) references ALUMNOS(Id)
)

create table ENTRENAMIENTOS(
Id int IDENTITY(1,1) not null,
Dia date not null,
Duracion time not null,
IdTipo int not null,
Descripcion varchar(1000) not null,
Distancia decimal not null,
Series int not null,
Repeticiones int not null,
constraint PK_ID_ENTRENAMIENTO primary key(Id),
CONSTRAINT FK_IdTipo FOREIGN KEY (IdTipo) REFERENCES TIPO_ENTRENAMIENTO(Id)
)


