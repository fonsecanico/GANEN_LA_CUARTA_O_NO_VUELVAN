-- me fijo cuantos clientes tengo y cuantas veces aparecen
select
Cliente_Dni,
count(*) Cantidad_Apariciones
from gd_esquema.Maestra
group by Cliente_Dni
order by Cliente_Dni
-- me fijo que un cliente tenga mas de una direccion
select
Cliente_Dni,
count(distinct Cliente_Direccion) Cantidad_Direcciones
from gd_esquema.Maestra
group by Cliente_Dni
having count(distinct Cliente_Direccion) > 1
order by Cliente_Dni
-- verifico
select
Cliente_Nombre,
Cliente_Dni,
Cliente_Tel,
Cliente_Mail,
Cliente_Direccion,
Cliente_Fecha_Nac,
Cliente_Localidad,
Cliente_Provincia
from gd_esquema.Maestra
where Cliente_Dni = '48083124'
-- son dos clientes distintos.
-- contrasto con los otros 3:
-- 1
select
Cliente_Nombre,
Cliente_Dni,
Cliente_Tel,
Cliente_Mail,
Cliente_Direccion,
Cliente_Fecha_Nac,
Cliente_Localidad,
Cliente_Provincia
from gd_esquema.Maestra
where Cliente_Dni = '12875566'
-- 2
select
Cliente_Nombre,
Cliente_Dni,
Cliente_Tel,
Cliente_Mail,
Cliente_Direccion,
Cliente_Fecha_Nac,
Cliente_Localidad,
Cliente_Provincia
from gd_esquema.Maestra
where Cliente_Dni = '95081977'
-- 3
select
Cliente_Nombre,
Cliente_Dni,
Cliente_Tel,
Cliente_Mail,
Cliente_Direccion,
Cliente_Fecha_Nac,
Cliente_Localidad,
Cliente_Provincia
from gd_esquema.Maestra
where Cliente_Dni = '99239589'
-- son siempre dos clientes distintos.
-- => el cliente tiene 1 direccion

-- de aca saco que, por cliente, tengo:
-- 1 solo nombre
-- 1 solo DNI (esto no es unico)
-- 1 solo Telefono
-- 1 Mail
-- 1 Direccion
-- 1 Fecha Nac
-- 1 Localidad
-- 1 Provincia