INSERT INTO Pais VALUES('Estados Unidos', 'América');
INSERT INTO Pais VALUES('China', 'Asia');
INSERT INTO Pais VALUES('Inglaterra', 'Europa');
INSERT INTO Pais VALUES('Ucrania', 'Europa');
INSERT INTO Pais VALUES('Italia', 'Europa');
INSERT INTO Pais VALUES('Francia', 'Europa');
INSERT INTO Pais VALUES('Portugal', 'Europa');
INSERT INTO Pais VALUES('Suecia', 'Europa');
INSERT INTO Pais VALUES('Japón', 'Asia');
INSERT INTO Pais VALUES('Sudáfrica', 'África');
INSERT INTO Pais VALUES('Dinamarca', 'Europa');


INSERT INTO Artista VALUES(01, 'Dragonforce', 'Inglaterra');
INSERT INTO Artista VALUES(03, 'Metallica', 'Estados Unidos');
INSERT INTO Artista VALUES(04, 'Nujabes', 'Japón');

INSERT INTO Persona VALUES('000001', 'Marc', 'Hudson', 'M', '11-2-1987', 'Inglaterra');
INSERT INTO Persona VALUES('3423434', 'Herman', 'Li', 'M', '3-10-1976', 'China');
INSERT INTO Persona VALUES('000002', 'Samuel', 'Totman', 'M', '8-8-1979', 'Inglaterra');
INSERT INTO Persona VALUES('4564783', 'Vadim', 'Pruzhanov', 'M', '18-6-1982', 'Ucrania');
INSERT INTO Persona VALUES('4637823', 'Frédéric', 'Leclercq', 'M', '23-6-1978', 'Francia');

INSERT INTO Persona VALUES('398472', 'Zachery Paul', 'Theart', 'M', '22-1-1975', 'Sudáfrica');

INSERT INTO Persona VALUES('002023', 'Lars', 'Ulrich', 'M', '26-12-1963', 'Dinamarca');
INSERT INTO Persona VALUES('075849', 'James', 'Hetfield', 'M', '3-8-1963', 'Estados Unidos');
INSERT INTO Persona VALUES('120898', 'Kirk', 'Hammett', 'M', '18-11-1962', 'Estados Unidos');
INSERT INTO Persona VALUES('473878', 'Roberto Agustín', 'Trujillo', 'M', '23-10-1964', 'Estados Unidos');

INSERT INTO Persona VALUES('738893', 'David', 'Mustaine', 'M', '13-9-1961', 'Estados Unidos');

INSERT INTO Persona VALUES('876437', 'Seba', 'Jun', 'M', '7-2-1974', 'Japón');

INSERT INTO Instrumento VALUES (01, 'Guitarra eléctrica');
INSERT INTO Instrumento VALUES (02, 'Batería');
INSERT INTO Instrumento VALUES (03, 'Teclado sintetizador');
INSERT INTO Instrumento VALUES (04, 'Piano');
INSERT INTO Instrumento VALUES (05, 'Bajo');
INSERT INTO Instrumento VALUES (06, 'Voz');
INSERT INTO Instrumento VALUES (07, 'Mezcladora');
INSERT INTO Instrumento VALUES (08, 'Guitarra acústica');

INSERT INTO Album VALUES(1, 'Valley of the Damned', '25-2-2003', 'Sanctuary Records');
INSERT INTO Album VALUES(2, 'Sonic Firestorm', '11-5-2004', 'Thin Ice Studios');
INSERT INTO Album VALUES(3, 'Inhuman Rampage', '9-10-2006', 'Roadrunner Records');
INSERT INTO Album VALUES(4, 'Ultra Beatdown', '26-8-2008', 'Universal Music');
INSERT INTO Album VALUES(5, 'The Power Within', '15-4-2012', 'Roadrunner Records');


INSERT INTO Album VALUES(11, 'Kill ''em all', '25-7-1983', 'Megaforce Records');
INSERT INTO Album VALUES(12, 'Ride the Lightning', '27-7-1984', 'Elektra Records');
INSERT INTO Album VALUES(13, 'Master of Puppets', '3-3-1986', 'Elektra Records');

INSERT INTO Album VALUES(21, 'Modal Soul', '11-11-2005', 'Hydeout Productions');
INSERT INTO Album VALUES(22, 'Spiritual State', '3-12-2011', 'Hydeout Productions');

INSERT INTO Cancion VALUES(1, 'Starfire');
INSERT INTO Cancion VALUES(2, 'Above the Winter Moonlight');
INSERT INTO Cancion VALUES(3, 'Through the Fire and Flames');
INSERT INTO Cancion VALUES(4, 'Heroes of Our Time');
INSERT INTO Cancion VALUES(5, 'Last Man Stands');


INSERT INTO Cancion VALUES(11, 'Battery');
INSERT INTO Cancion VALUES(12, 'Master of Puppets');
INSERT INTO Cancion VALUES(13, 'Fade to Black');
INSERT INTO Cancion VALUES(14, 'Escape');
INSERT INTO Cancion VALUES(15, 'Seek and Destroy');
INSERT INTO Cancion VALUES(16, 'No Remorse');


INSERT INTO Cancion VALUES(21, 'Feather');
INSERT INTO Cancion VALUES(22, 'Ordinary Joe');
INSERT INTO Cancion VALUES(23, 'Luv(sic) part 3');
INSERT INTO Cancion VALUES(24, 'Color of Autumn');
INSERT INTO Cancion VALUES(25, 'Spiral');
INSERT INTO Cancion VALUES(26, 'Far Fowls');


INSERT INTO Interpretacion VALUES(1, 01, 'Starfire', '00:05:53', null);
INSERT INTO Interpretacion VALUES(2, 01, 'Above the Winter Moonlight', '00:07:31', null);
INSERT INTO Interpretacion VALUES(3, 01, 'Through the Fire and Flames', '00:07:24', null);
INSERT INTO Interpretacion VALUES(4, 01, 'Heroes of Our Time', '00:07:13', null);
INSERT INTO Interpretacion VALUES(5, 01, 'Last Man Stands', '00:05:12', null);


INSERT INTO Interpretacion VALUES(11, 03, 'Battery', '00:05:10', null);
INSERT INTO Interpretacion VALUES(12, 03, 'Master of Puppets', '00:08:38', null);
INSERT INTO Interpretacion VALUES(13, 03, 'Fade to Black', '00:06:56', null);
INSERT INTO Interpretacion VALUES(14, 03, 'Escape', '00:04:23', null);
INSERT INTO Interpretacion VALUES(15, 03, 'Seek and Destroy', '00:06:51', null);
INSERT INTO Interpretacion VALUES(16, 03, 'No Remorse', '00:06:23', null);


INSERT INTO Interpretacion VALUES(21, 04, 'Feather', '00:02:55', null);
INSERT INTO Interpretacion VALUES(22, 04, 'Ordinary Joe', '00:05:07', null);
INSERT INTO Interpretacion VALUES(23, 04, 'Luv(sic) part 3', '00:05:36', null);
INSERT INTO Interpretacion VALUES(24, 04, 'Color of Autumn', '00:01:43', null);
INSERT INTO Interpretacion VALUES(25, 04, 'Spiral', '00:03:40', null);
INSERT INTO Interpretacion VALUES(26, 04, 'Far Fowls', '00:04:24', null);

INSERT INTO TocaInstrumento VALUES('000001', 'Inglaterra', 06);
INSERT INTO TocaInstrumento VALUES('3423434', 'China', 01);
INSERT INTO TocaInstrumento VALUES('000002', 'Inglaterra', 01);
INSERT INTO TocaInstrumento VALUES('4564783', 'Ucrania', 03);
INSERT INTO TocaInstrumento VALUES('4637823', 'Francia', 05);
INSERT INTO TocaInstrumento VALUES('398472', 'Sudáfrica', 06);

INSERT INTO TocaInstrumento VALUES('002023', 'Dinamarca', 02);
INSERT INTO TocaInstrumento VALUES('075849', 'Estados Unidos', 01);
INSERT INTO TocaInstrumento VALUES('075849', 'Estados Unidos', 06);
INSERT INTO TocaInstrumento VALUES('120898', 'Estados Unidos', 01);
INSERT INTO TocaInstrumento VALUES('473878', 'Estados Unidos', 05);
INSERT INTO TocaInstrumento VALUES('738893', 'Estados Unidos', 01);

INSERT INTO TocaInstrumento VALUES('876437', 'Japón', 07);
INSERT INTO TocaInstrumento VALUES('876437', 'Japón', 03);
INSERT INTO TocaInstrumento VALUES('876437', 'Japón', 04);
INSERT INTO TocaInstrumento VALUES('876437', 'Japón', 08);


INSERT INTO Compuesta VALUES('000001', 'Inglaterra', 01, null);
INSERT INTO Compuesta VALUES('3423434', 'China', 01, null);
INSERT INTO Compuesta VALUES('000002', 'Inglaterra', 01, null);
INSERT INTO Compuesta VALUES('4564783', 'Ucrania', 01, null);
INSERT INTO Compuesta VALUES('4637823', 'Francia', 01, null);
INSERT INTO Compuesta VALUES('398472', 'Sudáfrica', 01, null);

INSERT INTO Compuesta VALUES('002023', 'Dinamarca', 03, '14-3-1982');
INSERT INTO Compuesta VALUES('075849', 'Estados Unidos', 03, '14-3-1982');
INSERT INTO Compuesta VALUES('120898', 'Estados Unidos', 03, '15-6-1983');
INSERT INTO Compuesta VALUES('473878', 'Estados Unidos', 03, '15-6-2003');

INSERT INTO Compuesta VALUES('738893', 'Estados Unidos', 03, '15-6-1982');

INSERT INTO Compuesta VALUES('876437', 'Japón', 04, '15-6-1996'); -- 15-6 es una fecha comodín, lo que importa es el año

INSERT INTO FechaSalida VALUES('738893', 'Estados Unidos', 03, '14-6-1983');
INSERT INTO FechaSalida VALUES('876437', 'Japón', 04, '26-2-2010');

INSERT INTO Lanza VALUES(01, 1);
INSERT INTO Lanza VALUES(01, 2);
INSERT INTO Lanza VALUES(01, 3);
INSERT INTO Lanza VALUES(01, 4);
INSERT INTO Lanza VALUES(01, 5);

INSERT INTO Lanza VALUES(03, 11);
INSERT INTO Lanza VALUES(03, 12);
INSERT INTO Lanza VALUES(03, 13);

INSERT INTO Lanza VALUES(04, 21);
INSERT INTO Lanza VALUES(04, 22);

INSERT INTO ComponeCancion VALUES(1, 01);
INSERT INTO ComponeCancion VALUES(2, 01);
INSERT INTO ComponeCancion VALUES(3, 01);
INSERT INTO ComponeCancion VALUES(4, 01);
INSERT INTO ComponeCancion VALUES(5, 01);


INSERT INTO ComponeCancion VALUES(11, 03);
INSERT INTO ComponeCancion VALUES(12, 03);
INSERT INTO ComponeCancion VALUES(13, 03);
INSERT INTO ComponeCancion VALUES(14, 03);
INSERT INTO ComponeCancion VALUES(15, 03);
INSERT INTO ComponeCancion VALUES(16, 03);


INSERT INTO ComponeCancion VALUES(21, 04);
INSERT INTO ComponeCancion VALUES(22, 04);
INSERT INTO ComponeCancion VALUES(23, 04);
INSERT INTO ComponeCancion VALUES(24, 04);
INSERT INTO ComponeCancion VALUES(25, 04);
INSERT INTO ComponeCancion VALUES(26, 04);

INSERT INTO Pertenece VALUES(1, 01, 'Starfire', 1);
INSERT INTO Pertenece VALUES(2, 01, 'Above the Winter Moonlight', 2);
INSERT INTO Pertenece VALUES(3, 01, 'Through the Fire and Flames', 3);
INSERT INTO Pertenece VALUES(4, 01, 'Heroes of Our Time', 4);
INSERT INTO Pertenece VALUES(5, 01, 'Last Man Stands', 5);


INSERT INTO Pertenece VALUES(11, 03, 'Battery', 13);
INSERT INTO Pertenece VALUES(12, 03, 'Master of Puppets', 13);
INSERT INTO Pertenece VALUES(13, 03, 'Fade to Black', 12);
INSERT INTO Pertenece VALUES(14, 03, 'Escape', 12);
INSERT INTO Pertenece VALUES(15, 03, 'Seek and Destroy', 11);
INSERT INTO Pertenece VALUES(16, 03, 'No Remorse', 11);


INSERT INTO Pertenece VALUES(21, 04, 'Feather', 21);
INSERT INTO Pertenece VALUES(22, 04, 'Ordinary Joe', 21);
INSERT INTO Pertenece VALUES(23, 04, 'Luv(sic) part 3', 21);
INSERT INTO Pertenece VALUES(24, 04, 'Color of Autumn', 22);
INSERT INTO Pertenece VALUES(25, 04, 'Spiral', 22);
INSERT INTO Pertenece VALUES(26, 04, 'Far Fowls', 22);

INSERT INTO InstrumentoCancion VALUES (24, 04, 'Color of Autumn', 04);
INSERT INTO InstrumentoCancion VALUES (24, 04, 'Color of Autumn', 02);

INSERT INTO Genero VALUES (1, 01, 'Starfire', 'Rock');
INSERT INTO Genero VALUES (1, 01, 'Starfire', 'Metal Progresivo');

INSERT INTO Idioma VALUES (15, 03, 'Seek and Destroy', 'Inglés');
