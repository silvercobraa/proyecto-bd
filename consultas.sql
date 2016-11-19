-- Consultas

-- Obtener el nombre y apellido de de todos los guitarristas estadounidenses
select p.nombre, p.apellido
from Persona as p, Instrumento as i, TocaInstrumento as ti
where p.dni = ti.dni and p.pais_nacimiento = ti.pais_origen and i.id = ti.instrumento and i.nombre = 'Guitarra eléctrica'
