-- me fijo cuantas agencias tengo y cuantas veces aparecen
select
Agencia_Nro_Agencia,
count(*) Cantidad_Apariciones
from gd_esquema.Maestra
group by Agencia_Nro_Agencia
order by Agencia_Nro_Agencia
-- tengo 12 agencias.
-- me fijo que una agencia tenga mas de una direccion
select
Agencia_Nro_Agencia,
count(distinct Agencia_Direccion) Cantidad_Direcciones
from gd_esquema.Maestra
group by Agencia_Nro_Agencia
having count(distinct Agencia_Direccion) > 1
order by Agencia_Nro_Agencia
-- no hay agencias con mas de una direccion
-- => la agencia tiene 1 direccion
select
Agencia_Nro_Agencia,
Agencia_Mail,
Agencia_Telefono,
Agencia_Direccion,
Agencia_Localidad,
Agencia_Provincia
from gd_esquema.Maestra
group by Agencia_Nro_Agencia, Agencia_Mail, Agencia_Telefono, Agencia_Direccion, Agencia_Localidad, Agencia_Provincia
-- tengo 12 registros
-- la agencia tiene como atributos unicos todos sus campos