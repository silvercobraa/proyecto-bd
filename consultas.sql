-- Consultas
-- =========

-- 1) Obtener el nombre y apellido de todos los guitarristas estadounidenses
	select p.nombre, p.apellido
	from Persona as p, Instrumento as i, TocaInstrumento as ti
	where p.dni = ti.dni and p.pais_nacimiento = ti.pais_origen and i.id = ti.instrumento and i.nombre = 'Guitarra eléctrica'

-- 2) Obtener el nombre de todos los artistas que hayan lanzado albumes bajo Roadrunner Records, junto con dichos albumes
	select ar.nombre_artistico, al.nombre
	from Artista as ar, Album as al, Lanza as l
	where ar.id = l.artista and al.id = l.album and al.sello = 'Roadrunner Records'

