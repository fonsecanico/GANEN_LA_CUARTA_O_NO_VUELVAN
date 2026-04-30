-- esto demuestra que todos los hospedajes tienen mas de una habitacion
select
Hospedaje_Nombre,
Hospedaje_Ciudad,
Hospedaje_Pais,
Hospedaje_Direccion,
Hospedaje_Incluye_Desayuno,
Hospedaje_Check_In,
Hospedaje_Check_Out,
Habitacion_Nombre,
Habitacion_Descripcion
from gd_esquema.Maestra
group by Hospedaje_Nombre, Hospedaje_Ciudad, Hospedaje_Pais, Hospedaje_Direccion, Hospedaje_Incluye_Desayuno, Hospedaje_Check_In, Hospedaje_Check_Out, Habitacion_Nombre, Habitacion_Descripcion
-- entonces muchas habitaciones tienen un solo hospedaje
-- el hospedaje al tener ciudad y pais tiene FK al ID_Ciudad
-- el hospedaje tiene una sola ciudad y se puede comprobar con
select
Hospedaje_Nombre,
count(distinct Hospedaje_Ciudad) as Cantidad_Ciudades_Hospedaje
from gd_esquema.Maestra
where Hospedaje_Nombre is not null
group by Hospedaje_Nombre
having count(distinct Hospedaje_Ciudad) > 1
-- la ciudad tiene un solo hospedaje y se puede comprobar con
select
Hospedaje_Ciudad,
count(distinct Hospedaje_Nombre) as Cantidad_Hospedajes_Ciudad
from gd_esquema.Maestra
where Hospedaje_Nombre is not null
group by Hospedaje_Ciudad
having count(distinct Hospedaje_Nombre) > 1
-- el hospedaje tiene una direccion y se puede comprobar con
select
Hospedaje_Nombre,
count(distinct Hospedaje_Direccion) as Cantidad_Direcciones_Hospedaje
from gd_esquema.Maestra
where Hospedaje_Nombre is not null
group by Hospedaje_Nombre
having count(distinct Hospedaje_Direccion) > 1