/*
Relacion 1 a 1. Actividad 1.2.
Se crean las tablas Alumnos y Usuarios. La relacion 1 a 1 se da porque un alumno puede tener un solo
usuario y un usuario puede pertenecer solo a un alumno.
*/
Create Database unoAuno
Use unoAuno
Create Table Alumnos(
	DNI varchar(8) not null unique ,
	Legajo bigint unique identity(1,1),
	Apellido varchar(100) not null,
	Nombres varchar(100) not null,
	Sexo char(1),
	Telefono varchar(20),
	Mail nvarchar(100) primary key not null,
	FechaDeNacimiento date check(FechaDeNacimiento < getdate()),
)

Use unoAuno
Create Table Usuarios(
	Mail nvarchar(100) primary key foreign key references Alumnos(Mail) not null,
	Contrasenia nvarchar(100) not null,
)