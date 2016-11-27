--
INSERT INTO Pais VALUES('Alemania', 'Europa');
INSERT INTO Pais VALUES('Finlandia', 'Europa');

INSERT INTO Artista VALUES(05, 'Helloween', 'Alemania');
INSERT INTO Artista VALUES(06, 'Sonata Arctica', 'Finlandia');

INSERT INTO Persona VALUES('123456', 'Michael', 'Kiske', 'M', '24-1-1968', 'Alemania');
INSERT INTO Persona VALUES('123457', 'Kai', 'Hansen', 'M', '17-1-1963', 'Alemania');
INSERT INTO Persona VALUES('123458', 'Michael', 'Weikath', 'M', '7-8-1962', 'Alemania');
INSERT INTO Persona VALUES('123459', 'Markus', 'Grosskopf', 'M', '21-9-1965', 'Alemania');
INSERT INTO Persona VALUES('123460', 'Ingo', 'Schwichtenberg', 'M', '18-5-1965', 'Alemania');

INSERT INTO Persona VALUES('923456', 'Toni', 'Kakko', 'M', '16-5-1975', 'Finlandia');
INSERT INTO Persona VALUES('923457', 'Henrik', 'Klingenberg', 'M', '21-10-1978', 'Finlandia');
INSERT INTO Persona VALUES('923458', 'Elias', 'Viljanen', 'M', '8-7-1975', 'Finlandia');
INSERT INTO Persona VALUES('923459', 'Tommy', 'Portimo', 'M', '5-9-1981', 'Finlandia');
INSERT INTO Persona VALUES('923460', 'Pasi', 'Kauppinen', 'M', '19-8-1978', 'Finlandia');

INSERT INTO SelloDiscografico VALUES(8, 'Noise Records');
INSERT INTO SelloDiscografico VALUES(9, 'Sony Music');
INSERT INTO SelloDiscografico VALUES(10, 'Spinefarm Records');
INSERT INTO SelloDiscografico VALUES(11, 'Avalon');
INSERT INTO SelloDiscografico VALUES(12, 'Nuclear Blast');

INSERT INTO Album VALUES(31, 'Keeper of the Seven Keys Part I', '23-5-1987', 8);
INSERT INTO Album VALUES(32, 'Keeper of the Seven Keys Part II', '1-8-1988', 8);
INSERT INTO Album VALUES(33, '7 Sinners', '31-10-2010', 9);

INSERT INTO Album VALUES(41, 'Ecliptica', '4-9-1999', 10);
INSERT INTO Album VALUES(42, 'Takatalvi', '21-11-2003', 11);
INSERT INTO Album VALUES(43, 'Silence', '16-7-2001', 10);
INSERT INTO Album VALUES(44, 'Reckoning Night', '11-10-2004', 12);

INSERT INTO Cancion VALUES(31, 'I Want Out');
INSERT INTO Cancion VALUES(32, 'Eagle Fly Free');
INSERT INTO Cancion VALUES(33, 'Dr. Stein');

INSERT INTO Cancion VALUES(41, '8th Commandment');
INSERT INTO Cancion VALUES(42, 'Replica');
INSERT INTO Cancion VALUES(43, 'Kingdom for a Heart');

INSERT INTO Cancion VALUES(51, 'Still Loving You');

INSERT INTO Interpretacion VALUES(31, 05, 'I Want Out', '00:04:40', null); -- Version de Helloween
INSERT INTO Interpretacion VALUES(31, 06, 'I Want Out', '00:03:52', null); -- version de Sonata
INSERT INTO Interpretacion VALUES(32, 05, 'Eagle Fly Free', '00:05:09', null);
INSERT INTO Interpretacion VALUES(33, 05, 'Dr. Stein', '00:05:04', null);

INSERT INTO Interpretacion VALUES(41, 06, '8th Commandment', '00:03:41', null);
INSERT INTO Interpretacion VALUES(42, 06, 'Replica', '00:04:55', null);
INSERT INTO Interpretacion VALUES(43, 06, 'Kingdom for a Heart', '00:03:49', null);

INSERT INTO Interpretacion VALUES(51, 06, 'Still Loving You', '00:04:33', null);
INSERT INTO Interpretacion VALUES(13, 06, 'Fade to Black', '00:05:46', null);

INSERT INTO TocaInstrumento VALUES('123456', 'Alemania', 06);
INSERT INTO TocaInstrumento VALUES('123457', 'Alemania', 01);
INSERT INTO TocaInstrumento VALUES('123458', 'Alemania', 01);
INSERT INTO TocaInstrumento VALUES('123459', 'Alemania', 05);
INSERT INTO TocaInstrumento VALUES('123460', 'Alemania', 02);

INSERT INTO TocaInstrumento VALUES('923456', 'Finlandia', 06);
INSERT INTO TocaInstrumento VALUES('923457', 'Finlandia', 03);
INSERT INTO TocaInstrumento VALUES('923458', 'Finlandia', 01);
INSERT INTO TocaInstrumento VALUES('923459', 'Finlandia', 02);
INSERT INTO TocaInstrumento VALUES('923460', 'Finlandia', 05);

INSERT INTO Compuesta VALUES('123456', 'Alemania', 05, null);
INSERT INTO Compuesta VALUES('123457', 'Alemania', 05, null);
INSERT INTO Compuesta VALUES('123458', 'Alemania', 05, null);
INSERT INTO Compuesta VALUES('123459', 'Alemania', 05, null);
INSERT INTO Compuesta VALUES('123460', 'Alemania', 05, null);

INSERT INTO Compuesta VALUES('923456', 'Finlandia', 06, null);
INSERT INTO Compuesta VALUES('923457', 'Finlandia', 06, null);
INSERT INTO Compuesta VALUES('923458', 'Finlandia', 06, null);
INSERT INTO Compuesta VALUES('923459', 'Finlandia', 06, null);
INSERT INTO Compuesta VALUES('923460', 'Finlandia', 06, null);

-- INSERT INTO FechaSalida VALUES('738893', 'Estados Unidos', 03, '14-6-1983');
-- INSERT INTO FechaSalida VALUES('876437', 'Japón', 04, '26-2-2010');

INSERT INTO Lanza VALUES(05, 31);
INSERT INTO Lanza VALUES(05, 32);
INSERT INTO Lanza VALUES(05, 33);

INSERT INTO Lanza VALUES(06, 41);
INSERT INTO Lanza VALUES(06, 42);
INSERT INTO Lanza VALUES(06, 43);
INSERT INTO Lanza VALUES(06, 44);

INSERT INTO ComponeCancion VALUES(31, 05);
INSERT INTO ComponeCancion VALUES(32, 05);
INSERT INTO ComponeCancion VALUES(33, 05);

INSERT INTO ComponeCancion VALUES(41, 06);
INSERT INTO ComponeCancion VALUES(42, 06);
INSERT INTO ComponeCancion VALUES(43, 06);

INSERT INTO Pertenece VALUES(31, 05, 'I Want Out', 32); -- Version de Helloween
INSERT INTO Pertenece VALUES(31, 06, 'I Want Out', 42); -- version de Sonata
INSERT INTO Pertenece VALUES(32, 05, 'Eagle Fly Free', 32);
INSERT INTO Pertenece VALUES(33, 05, 'Dr. Stein', 32);

INSERT INTO Pertenece VALUES(41, 06, '8th Commandment', 41);
INSERT INTO Pertenece VALUES(42, 06, 'Replica', 41);
INSERT INTO Pertenece VALUES(43, 06, 'Kingdom for a Heart', 41);

INSERT INTO Pertenece VALUES(51, 06, 'Still Loving You', 42);
INSERT INTO Pertenece VALUES(13, 06, 'Fade to Black', 42);
