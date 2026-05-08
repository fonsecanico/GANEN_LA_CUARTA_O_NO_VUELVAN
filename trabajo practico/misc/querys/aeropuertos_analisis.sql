-- para el aeropuerto se tiene:

-- Aeropuerto_Salida_Codigo
-- Aeropuerto_Salida_Descripcion
-- Aeropuerto_Salida_Ciudad
-- Aeropuerto_Salida_Pais
-- Aeropuerto_Llegada_Codigo
-- Aeropuerto_Llegada_Descripcion
-- Aeropuerto_Llegada_Ciudad
-- Aeropuerto_Llegada_Pais

-- hay mas de un aeropuerto por ciudad?
-- separo los de llegada en codigo y ciudad
select 
Aeropuerto_Llegada_Codigo,
Aeropuerto_Llegada_Ciudad
from gd_esquema.Maestra
where Aeropuerto_Llegada_Codigo is not null and Aeropuerto_Llegada_Ciudad is not null
group by Aeropuerto_Llegada_Codigo, Aeropuerto_Llegada_Ciudad
-- separo los de salida en codigo y ciudad
select 
Aeropuerto_Salida_Codigo,
Aeropuerto_Salida_Ciudad
from gd_esquema.Maestra
where Aeropuerto_Salida_Codigo is not null and Aeropuerto_Salida_Ciudad is not null
group by Aeropuerto_Salida_Codigo, Aeropuerto_Salida_Ciudad


-- los pongo en mi query, tirando union
select Ciudad, count(distinct Codigo) as Cantidad_Codigos
from(
select 
Aeropuerto_Llegada_Codigo as Codigo,
Aeropuerto_Llegada_Ciudad as Ciudad
from gd_esquema.Maestra
where Aeropuerto_Llegada_Codigo is not null and Aeropuerto_Llegada_Ciudad is not null
union
select 
Aeropuerto_Salida_Codigo as Codigo,
Aeropuerto_Salida_Ciudad as Ciudad
from gd_esquema.Maestra
where Aeropuerto_Salida_Codigo is not null and Aeropuerto_Salida_Ciudad is not null
) as Aeropuertos
group by Ciudad
having count(distinct codigo) > 1
order by Ciudad
-- la conclusion es que aeropuerto es una entidad que tiene
-- codigo, descripcion, id ciudad