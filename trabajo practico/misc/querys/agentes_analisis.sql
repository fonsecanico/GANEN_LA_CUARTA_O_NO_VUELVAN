-- me fijo cuantos agentes tengo y cuantas veces aparecen
select
Agente_Dni, 
Agente_Legajo,
count(*) Cantidad_Apariciones
from gd_esquema.Maestra
group by Agente_Dni, Agente_Legajo
order by Agente_Dni
-- agente tiene legajo y dni, checkeo ambos por las dudas
-- me fijo que una agente tenga mas de una direccion
select
Agente_Dni,
count(distinct Agente_Direccion) Cantidad_Direcciones
from gd_esquema.Maestra
group by Agente_Dni
having count(distinct Agente_Direccion) > 1
order by Agente_Dni
-- no hay agentes con mas de una direccion
-- => el agente tiene 1 direccion

-- que hace unico al agente?
-- dni vs legajo
select
count (distinct Agente_Dni) Cantidad_Dnis_Agente
from gd_esquema.Maestra
--
select
count (distinct Agente_Legajo) Cantidad_Legajos_Agente
from gd_esquema.Maestra
-- ambos casos 63 registros. compruebo unicidad:
select count(*) Cantidad_Dni_Legajo
from (
select
Agente_Dni,
Agente_Legajo
from gd_esquema.Maestra
group by Agente_Dni, Agente_Legajo
) Dni_X_Legajo
-- se puede comprobar con
select
Agente_Dni,
Agente_Legajo
from gd_esquema.Maestra
group by Agente_Dni, Agente_Legajo
order by Agente_Dni, Agente_Legajo
-- el agente tiene 1 dni, 1 legajo
-- me fijo los agentes por nombre
select
Agente_Nombre,
Agente_Apellido,
Agente_Fecha_Nac,
Agente_Telefono,
Agente_Mail
from gd_esquema.Maestra
group by Agente_Nombre, Agente_Apellido, Agente_Fecha_Nac, Agente_Telefono, Agente_Mail
-- misma cantidad de registros
-- => el agente tiene como atributos unicos todos sus campos