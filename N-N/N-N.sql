/*
Relacion N a N. Actividad 1.2
Se crean las tablas Pasajeros, Destinos y Reservas, este ultima como tabla pivote. La realcion N a N
se da ya que un pasajero puede visitar varios destinos y los destinos pueden ser visitados por varios
pasajeros. Entonces un pasajero puede tener varias reservas al mismo destino, o a distintos, pero 
con un unico codigo de reserva.
*/
Create Database nAn
Use nAn
Create Table Pasajeros(
	DNI varchar(8) not null primary key,
	Nombre varchar(100) not null,
	Apellido varchar(100) not null,
	FechaNacimiento date not null check(FechaNacimiento < getdate()),
	Telefono varchar(20),
	Mail nvarchar(100) unique,
)
Use nAn
Create Table Destinos(
	IDDestino bigint not null primary key identity(1,1),
	Nombre varchar(100) not null,
	CodigoAeropuerto varchar(4) not null unique,
)
Use nAn
Create Table Reservas(
	DNI varchar(8) not null foreign key references Pasajeros(DNI),
	IDDestino bigint not null foreign key references Destinos(IDDestino),
	PrecioTotal money not null check(PrecioTotal > 0),
	CodigoReserva bigint identity(1,1) not null primary key
)