-- Constantes por definir:
-- =======================
-- LARGO_MAX_NOMBRE_PERSONA
-- LARGO_MAX_APELLIDO_PERSONA
-- LARGO_MAX_PAIS
-- LARGO_MAX_CONTINENTE
-- LARGO_MAX_INSTRUMENTO
-- LARGO_MAX_NOMBRE_ARTISTICO
-- LARGO_MAX_BANDA
-- LARGO_MAX_SELLO
-- LARGO_MAX_ALBUM
-- LARGO_MAX_CANCION
-- LARGO_MAX_INTERPRETACION
-- LARGO_MAX_GENERO
-- LARGO_MAX_IDIOMA

-- Tablas asociadas a entidades
-- ============================
create table Pais
(
	nombre varchar(LARGO_MAX_PAIS),
	continente char(LARGO_MAX_CONTINENTE),
	primary key(nombre)
);

create table Persona
(
	dni int,
	nombre varchar(LARGO_MAX_NOMBRE_PERSONA),
	apellido varchar(LARGO_MAX_APELLIDO_PERSONA),
	sexo char,
	fecha_nacimiento date,
	pais_nacimiento char(LARGO_MAX_PAIS),
	primary key(dni, pais_nacimiento),
	foreign key(pais_nacimiento) references Pais(nombre)
);

create table Instrumento
(
	nombre varchar(LARGO_MAX_INSTRUMENTO),
	primary key(nombre)
);

create table Artista
(
	id int,
	nombre_artistico varchar(LARGO_MAX_NOMBRE_ARTISTICO),
	nombre_pais varchar(LARGO_MAX_PAIS),
	primary key(id),
	foreign key(nombre_pais) references Pais(nombre)
);

create table Album
(
	id int,
	-- id varchar(),
	nombre varchar(LARGO_MAX_ALBUM),
	fecha date,
	sello varchar(LARGO_MAX_SELLO),
	primary key(id)
);

create table Cancion
(
	id int,
	nombre varchar(LARGO_MAX_CANCION),
	primary key(id)
);

create table Interpretacion
(
	id_cancion int,
	id_artista int,
	nombre varchar(LARGO_MAX_INTERPRETACION),
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
	pais_origen varchar(LARGO_MAX_PAIS),
	instrumento varchar(LARGO_MAX_INSTRUMENTO),
	primary key(dni_persona, pais_origen, instrumento),
	foreign key(dni_persona, pais_origen) references Persona(dni, pais_nacimiento),
	foreign key(instrumento) references instrumento(nombre)
);

create table Compuesta -- banda, no cancion
(
	dni int,
	pais_origen varchar(LARGO_MAX_PAIS),
	artista int,
	fecha_ingreso date,
	primary key(dni, pais_origen, artista),
	foreign key(dni, pais_origen) references Persona(dni, pais_nacimiento),
	foreign key(artista) references Artista(id)
);

create table FechaSalida -- banda, no cancion
(
	dni int,
	pais_origen varchar(LARGO_MAX_PAIS),
	artista int,
	fecha_salida date,
	primary key(dni, pais_origen, artista),
	foreign key(dni, pais_origen) references Persona(dni, pais_nacimiento),
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
	nombre varchar(LARGO_MAX_INTERPRETACION),
	id_cancion int,
	artista int,
	album int,
	numero_pista int,
	primary key(nombre, id_cancion, artista, album),
	foreign key(nombre, id_cancion, artista) references Interpretacion(nombre, id_cancion, id_artista),
	foreign key(album) references Album(id)
);

create table InstrumentoCancion
(
	nombre varchar(LARGO_MAX_INTERPRETACION),
	id_cancion int,
	artista int,
	instrumento varchar(LARGO_MAX_INSTRUMENTO),
	primary key(nombre, id_cancion, artista, instrumento),
	foreign key(nombre, id_cancion, artista) references Interpretacion(nombre, id_cancion, id_artista),
	foreign key(instrumento) references Instrumento(nombre)
);

-- Tablas asociadas a atributos multivalua3
-- ========================================

create table Genero
(
	nombre varchar(LARGO_MAX_INTERPRETACION),
	id_cancion int,
	artista int,
	genero varchar(LARGO_MAX_GENERO),
	primary key(nombre, id_cancion, artista, genero),
	foreign key(nombre, id_cancion, artista) references Interpretacion(nombre, id_cancion, id_artista)
);

create table Idioma
(
	nombre varchar(LARGO_MAX_INTERPRETACION),
	id_cancion int,
	artista int,
	idioma varchar(LARGO_MAX_IDIOMA),
	primary key(nombre, id_cancion, artista, idioma),
	foreign key(nombre, id_cancion, artista) references Interpretacion(nombre, id_cancion, id_artista)
);
