/*Relacion 1 a N. Actividad 1.2
Se crean las tablas partidos y localidades relacionadas entre si por el ID de partido, donde la relación se da porque un partido puede tener muchas localidades pero una localidad solo pertenece a un partido. 
*/

create database unoAn
use unoAn
create table Partidos(
	ID bigint not null primary key identity(1,1),
	Nombre varchar(100) not null,
	CantidadDeHabitantes bigint check(CantidadDeHabitantes > 0),
	Intendente varchar(100),
	Superficie bigint check(Superficie > 0)
	)
use unoAn
create table Localidades(
	IDLocalidad bigint not null primary key ,
	IDPartido bigint not null foreign key references Partidos(ID),
	Nombre varchar(100) not null,
	CantidadDeHabitantes bigint check(CantidadDeHabitantes > 0),
	Superficie bigint check(Superficie > 0)
	)
