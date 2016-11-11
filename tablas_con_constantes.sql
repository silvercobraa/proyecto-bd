-- Tablas asociadas a entidades
-- ============================
create table Pais
(
	nombre varchar(32),
	continente char(32),
	primary key(nombre)
);

create table Persona
(
	dni int,
	nombre varchar(32),
	apellido varchar(32),
	sexo char,
	fecha_nacimiento date,
	pais_nacimiento char(32),
	primary key(dni, pais_nacimiento),
	foreign key(pais_nacimiento) references Pais(nombre)
);

create table Instrumento
(
	nombre varchar(32),
	primary key(nombre)
);

create table Artista
(
	id int,
	nombre_artistico varchar(32),
	nombre_pais varchar(32),
	primary key(id),
	foreign key(nombre_pais) references Pais(nombre)
);

create table Album
(
	id int,
	-- id varchar(),
	nombre varchar(32),
	fecha date,
	sello varchar(32),
	primary key(id)
);

create table Cancion
(
	id int,
	nombre varchar(32),
	primary key(id)
);

create table Interpretacion
(
	id_cancion int,
	id_artista int,
	nombre varchar(32),
	duracion int,
	fecha_lanzamiento date,
	primary key(id_cancion, nombre, id_artista),
	foreign key(id_cancion) references Cancion(id),
	foreign key(id_artista) references Artista(id)
);

-- Tablas asociadas a relaciones
-- =============================

create table TocaInstrumento
(
	dni_persona int,
	pais_origen varchar(32),
	instrumento varchar(32),
	primary key(dni_persona, pais_origen, instrumento),
	foreign key(dni_persona) references Persona(dni),
	foreign key(pais_origen) references Pais(nombre),
	foreign key(instrumento) references instrumento(nombre)
);

create table Compuesta -- banda, no cancion
(
	dni int,
	pais_origen varchar(32),
	artista int,
	fecha_ingreso date,
	primary key(dni, pais_origen, artista),
	foreign key(dni) references Persona(dni),
	foreign key(pais_origen) references Pais(nombre),
	foreign key(artista) references Artista(id)
);

create table FechaSalida -- banda, no cancion
(
	dni int,
	pais_origen varchar(32),
	artista int,
	fecha_salida date,
	primary key(dni, pais_origen, artista),
	foreign key(dni) references Persona(dni),
	foreign key(pais_origen) references Pais(nombre),
	foreign key(artista) references Artista(id)
);
create table Lanza
(
	artista int,
	album int,
	primary key(artista, album),
	foreign key(artista) references Artista(id),
	foreign key(album) references Album(id)
);

create table ComponeCancion
(
	id_cancion int,
	artista int,
	primary key(id_cancion, artista),
	foreign key(id_cancion) references Cancion(id),
	foreign key(artista) references Artista(id)
);

create table Pertenece
(
	nombre varchar(32),
	id_cancion int,
	artista int,
	album int,
	numero_pista int,
	primary key(nombre, id_cancion, artista, album),
	foreign key(nombre) references Interpretacion(nombre),
	foreign key(id_cancion) references Cancion(id),
	foreign key(artista) references Artista(id),
	foreign key(album) references Album(id)
);

create table InstrumentoCancion
(
	nombre varchar(32),
	id_cancion int,
	artista int,
	instrumento varchar(32),
	primary key(nombre, id_cancion, artista, instrumento),
	foreign key(nombre) references Interpretacion(nombre),
	foreign key(id_cancion) references Cancion(id),
	foreign key(artista) references Artista(id),
	foreign key(instrumento) references Instrumento(nombre)
);

-- Tablas asociadas a atributos multivalua3
-- ========================================

create table Genero
(
	nombre varchar(32),
	id_cancion int,
	artista int,
	genero varchar(32),
	primary key(nombre, id_cancion, artista, genero),
	foreign key(nombre) references Interpretacion(nombre),
	foreign key(id_cancion) references Cancion(id),
	foreign key(artista) references Artista(id)
);

create table Idioma
(
	nombre varchar(32),
	id_cancion int,
	artista int,
	idioma varchar(32),
	primary key(nombre, id_cancion, artista, idioma),
	foreign key(nombre) references Interpretacion(nombre),
	foreign key(id_cancion) references Cancion(id),
	foreign key(artista) references Artista(id)
);
