--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: FASE III; Type: SCHEMA; Schema: -; Owner: UbdIo
--

CREATE SCHEMA "FASE III";


ALTER SCHEMA "FASE III" OWNER TO "UbdIo";

--
-- Name: SCHEMA "FASE III"; Type: COMMENT; Schema: -; Owner: UbdIo
--

COMMENT ON SCHEMA "FASE III" IS 'Fase 3 del proyecto';


SET search_path = "FASE III", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: album; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE album (
    id integer NOT NULL,
    nombre character varying(32),
    fecha date,
    sello integer
);


ALTER TABLE "FASE III".album OWNER TO "UbdIo";

--
-- Name: artista; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE artista (
    id integer NOT NULL,
    nombre_artistico character varying(32),
    nombre_pais character varying(32)
);


ALTER TABLE "FASE III".artista OWNER TO "UbdIo";

--
-- Name: cancion; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE cancion (
    id integer NOT NULL,
    nombre character varying(32)
);


ALTER TABLE "FASE III".cancion OWNER TO "UbdIo";

--
-- Name: componecancion; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE componecancion (
    id_cancion integer NOT NULL,
    artista integer NOT NULL
);


ALTER TABLE "FASE III".componecancion OWNER TO "UbdIo";

--
-- Name: compuesta; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE compuesta (
    dni character varying(15) NOT NULL,
    pais_origen character varying(32) NOT NULL,
    artista integer NOT NULL,
    fecha_ingreso date
);


ALTER TABLE "FASE III".compuesta OWNER TO "UbdIo";

--
-- Name: fechasalida; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE fechasalida (
    dni character varying(15) NOT NULL,
    pais_origen character varying(32) NOT NULL,
    artista integer NOT NULL,
    fecha_salida date
);


ALTER TABLE "FASE III".fechasalida OWNER TO "UbdIo";

--
-- Name: genero; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE genero (
    id_cancion integer NOT NULL,
    artista integer NOT NULL,
    nombre character varying(32) NOT NULL,
    genero character varying(32) NOT NULL
);


ALTER TABLE "FASE III".genero OWNER TO "UbdIo";

--
-- Name: idioma; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE idioma (
    id_cancion integer NOT NULL,
    artista integer NOT NULL,
    nombre character varying(32) NOT NULL,
    idioma character varying(32) NOT NULL
);


ALTER TABLE "FASE III".idioma OWNER TO "UbdIo";

--
-- Name: instrumento; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE instrumento (
    id integer NOT NULL,
    nombre character varying(32)
);


ALTER TABLE "FASE III".instrumento OWNER TO "UbdIo";

--
-- Name: instrumentocancion; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE instrumentocancion (
    id_cancion integer NOT NULL,
    artista integer NOT NULL,
    nombre character varying(32) NOT NULL,
    instrumento integer NOT NULL
);


ALTER TABLE "FASE III".instrumentocancion OWNER TO "UbdIo";

--
-- Name: interpretacion; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE interpretacion (
    id_cancion integer NOT NULL,
    id_artista integer NOT NULL,
    nombre character varying(32) NOT NULL,
    duracion time without time zone,
    fecha_lanzamiento date
);


ALTER TABLE "FASE III".interpretacion OWNER TO "UbdIo";

--
-- Name: lanza; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE lanza (
    artista integer NOT NULL,
    album integer NOT NULL
);


ALTER TABLE "FASE III".lanza OWNER TO "UbdIo";

--
-- Name: pais; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE pais (
    nombre character varying(32) NOT NULL,
    continente character(32)
);


ALTER TABLE "FASE III".pais OWNER TO "UbdIo";

--
-- Name: persona; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE persona (
    dni character varying(15) NOT NULL,
    nombre character varying(32),
    apellido character varying(32),
    sexo character(1),
    fecha_nacimiento date,
    pais_nacimiento character(32) NOT NULL
);


ALTER TABLE "FASE III".persona OWNER TO "UbdIo";

--
-- Name: pertenece; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE pertenece (
    id_cancion integer NOT NULL,
    artista integer NOT NULL,
    nombre character varying(32) NOT NULL,
    album integer NOT NULL,
    numero_pista integer
);


ALTER TABLE "FASE III".pertenece OWNER TO "UbdIo";

--
-- Name: sellodiscografico; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE sellodiscografico (
    id integer NOT NULL,
    nombre character varying(32)
);


ALTER TABLE "FASE III".sellodiscografico OWNER TO "UbdIo";

--
-- Name: tocainstrumento; Type: TABLE; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

CREATE TABLE tocainstrumento (
    dni character varying(15) NOT NULL,
    pais_origen character varying(32) NOT NULL,
    instrumento integer NOT NULL
);


ALTER TABLE "FASE III".tocainstrumento OWNER TO "UbdIo";

--
-- Name: album_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY album
    ADD CONSTRAINT album_pkey PRIMARY KEY (id);


--
-- Name: artista_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY artista
    ADD CONSTRAINT artista_pkey PRIMARY KEY (id);


--
-- Name: cancion_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY cancion
    ADD CONSTRAINT cancion_pkey PRIMARY KEY (id);


--
-- Name: componecancion_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY componecancion
    ADD CONSTRAINT componecancion_pkey PRIMARY KEY (id_cancion, artista);


--
-- Name: compuesta_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY compuesta
    ADD CONSTRAINT compuesta_pkey PRIMARY KEY (dni, pais_origen, artista);


--
-- Name: fechasalida_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY fechasalida
    ADD CONSTRAINT fechasalida_pkey PRIMARY KEY (dni, pais_origen, artista);


--
-- Name: genero_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (nombre, id_cancion, artista, genero);


--
-- Name: idioma_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY idioma
    ADD CONSTRAINT idioma_pkey PRIMARY KEY (nombre, id_cancion, artista, idioma);


--
-- Name: instrumento_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY instrumento
    ADD CONSTRAINT instrumento_pkey PRIMARY KEY (id);


--
-- Name: instrumentocancion_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY instrumentocancion
    ADD CONSTRAINT instrumentocancion_pkey PRIMARY KEY (nombre, id_cancion, artista, instrumento);


--
-- Name: interpretacion_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY interpretacion
    ADD CONSTRAINT interpretacion_pkey PRIMARY KEY (id_cancion, nombre, id_artista);


--
-- Name: lanza_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY lanza
    ADD CONSTRAINT lanza_pkey PRIMARY KEY (artista, album);


--
-- Name: pais_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (nombre);


--
-- Name: persona_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (dni, pais_nacimiento);


--
-- Name: pertenece_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY pertenece
    ADD CONSTRAINT pertenece_pkey PRIMARY KEY (nombre, id_cancion, artista, album);


--
-- Name: sellodiscografico_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY sellodiscografico
    ADD CONSTRAINT sellodiscografico_pkey PRIMARY KEY (id);


--
-- Name: tocainstrumento_pkey; Type: CONSTRAINT; Schema: FASE III; Owner: UbdIo; Tablespace: 
--

ALTER TABLE ONLY tocainstrumento
    ADD CONSTRAINT tocainstrumento_pkey PRIMARY KEY (dni, pais_origen, instrumento);


--
-- Name: artista_nombre_pais_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY artista
    ADD CONSTRAINT artista_nombre_pais_fkey FOREIGN KEY (nombre_pais) REFERENCES pais(nombre);


--
-- Name: componecancion_artista_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY componecancion
    ADD CONSTRAINT componecancion_artista_fkey FOREIGN KEY (artista) REFERENCES artista(id);


--
-- Name: componecancion_id_cancion_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY componecancion
    ADD CONSTRAINT componecancion_id_cancion_fkey FOREIGN KEY (id_cancion) REFERENCES cancion(id);


--
-- Name: compuesta_artista_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY compuesta
    ADD CONSTRAINT compuesta_artista_fkey FOREIGN KEY (artista) REFERENCES artista(id);


--
-- Name: compuesta_dni_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY compuesta
    ADD CONSTRAINT compuesta_dni_fkey FOREIGN KEY (dni, pais_origen) REFERENCES persona(dni, pais_nacimiento);


--
-- Name: fechasalida_artista_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY fechasalida
    ADD CONSTRAINT fechasalida_artista_fkey FOREIGN KEY (artista) REFERENCES artista(id);


--
-- Name: fechasalida_dni_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY fechasalida
    ADD CONSTRAINT fechasalida_dni_fkey FOREIGN KEY (dni, pais_origen) REFERENCES persona(dni, pais_nacimiento);


--
-- Name: genero_nombre_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY genero
    ADD CONSTRAINT genero_nombre_fkey FOREIGN KEY (nombre, id_cancion, artista) REFERENCES interpretacion(nombre, id_cancion, id_artista);


--
-- Name: idioma_nombre_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY idioma
    ADD CONSTRAINT idioma_nombre_fkey FOREIGN KEY (nombre, id_cancion, artista) REFERENCES interpretacion(nombre, id_cancion, id_artista);


--
-- Name: instrumentocancion_instrumento_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY instrumentocancion
    ADD CONSTRAINT instrumentocancion_instrumento_fkey FOREIGN KEY (instrumento) REFERENCES instrumento(id);


--
-- Name: instrumentocancion_nombre_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY instrumentocancion
    ADD CONSTRAINT instrumentocancion_nombre_fkey FOREIGN KEY (nombre, id_cancion, artista) REFERENCES interpretacion(nombre, id_cancion, id_artista);


--
-- Name: interpretacion_id_artista_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY interpretacion
    ADD CONSTRAINT interpretacion_id_artista_fkey FOREIGN KEY (id_artista) REFERENCES artista(id);


--
-- Name: interpretacion_id_cancion_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY interpretacion
    ADD CONSTRAINT interpretacion_id_cancion_fkey FOREIGN KEY (id_cancion) REFERENCES cancion(id);


--
-- Name: lanza_album_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY lanza
    ADD CONSTRAINT lanza_album_fkey FOREIGN KEY (album) REFERENCES album(id);


--
-- Name: lanza_artista_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY lanza
    ADD CONSTRAINT lanza_artista_fkey FOREIGN KEY (artista) REFERENCES artista(id);


--
-- Name: persona_pais_nacimiento_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_pais_nacimiento_fkey FOREIGN KEY (pais_nacimiento) REFERENCES pais(nombre);


--
-- Name: pertenece_album_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY pertenece
    ADD CONSTRAINT pertenece_album_fkey FOREIGN KEY (album) REFERENCES album(id);


--
-- Name: pertenece_nombre_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY pertenece
    ADD CONSTRAINT pertenece_nombre_fkey FOREIGN KEY (nombre, id_cancion, artista) REFERENCES interpretacion(nombre, id_cancion, id_artista);


--
-- Name: tocainstrumento_dni_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY tocainstrumento
    ADD CONSTRAINT tocainstrumento_dni_fkey FOREIGN KEY (dni, pais_origen) REFERENCES persona(dni, pais_nacimiento);


--
-- Name: tocainstrumento_instrumento_fkey; Type: FK CONSTRAINT; Schema: FASE III; Owner: UbdIo
--

ALTER TABLE ONLY tocainstrumento
    ADD CONSTRAINT tocainstrumento_instrumento_fkey FOREIGN KEY (instrumento) REFERENCES instrumento(id);


--
-- PostgreSQL database dump complete
--

