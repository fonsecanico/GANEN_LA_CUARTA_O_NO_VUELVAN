-- estos son los registros con proveedores
select *
from gd_esquema.Maestra
where Proveedor_Mail is not null and Proveedor_Nombre is not null and Proveedor_Telefono is not null
-- estos son mis proveedores
select distinct Proveedor_Nombre
from gd_esquema.Maestra
where Proveedor_Nombre is not null
-- los proveedores se relacionan con las excursiones
select
Proveedor_Nombre,
Proveedor_Mail,
Proveedor_Telefono,
Excursion_Nombre,
Excursion_Descripcion,
Excursion_Duracion,
Excursion_Horario,
Excursion_Precio
from gd_esquema.Maestra
where Proveedor_Nombre is not null
group by Proveedor_Nombre, Proveedor_Mail, Proveedor_Telefono, Excursion_Nombre, Excursion_Descripcion, Excursion_Duracion, Excursion_Horario, Excursion_Precio
-- como la cant de registros es diferente, un proveedor provee mas de una excursion