-- estas son las aerolineas
select
Aerolinea_Codigo,
Aerolinea_Nombre,
Aerolinea_Pais,
Aerolinea_Alianza
from gd_esquema.Maestra
where Aerolinea_Codigo is not null and Aerolinea_Nombre is not null and Aerolinea_Pais is not null and Aerolinea_Alianza is not null
group by Aerolinea_Codigo, Aerolinea_Nombre, Aerolinea_Pais, Aerolinea_Alianza
order by Aerolinea_Pais
-- hay mas de una aerolinea por pais, se puede verificar con
select
Aerolinea_Pais,
count(distinct Aerolinea_Codigo) as Cantidad_Aerolineas_Pais
from gd_esquema.Maestra
where Aerolinea_Codigo is not null and Aerolinea_Nombre is not null and Aerolinea_Pais is not null and Aerolinea_Alianza is not null
group by Aerolinea_Pais
having count(distinct Aerolinea_Codigo)> 1
order by Aerolinea_Pais
-- compruebo que las aerolineas tienen un solo pais
select
Aerolinea_Nombre,
Aerolinea_Codigo,
count(distinct Aerolinea_Pais) Pais
from gd_esquema.Maestra
where Aerolinea_Codigo is not null and Aerolinea_Nombre is not null and Aerolinea_Pais is not null and Aerolinea_Alianza is not null
group by Aerolinea_Nombre, Aerolinea_Codigo
having count(distinct Aerolinea_Pais) > 1