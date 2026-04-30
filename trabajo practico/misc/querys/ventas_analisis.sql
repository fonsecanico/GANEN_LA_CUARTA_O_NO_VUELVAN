-- tomo la primera venta
select top 1 *
from gd_esquema.Maestra
where Venta_Fecha_Venta is not null
---- NO NULOS:

-- Agencia_Nro_Agencia
-- Agencia_Direccion
-- Agencia_Telefono
-- Agencia_Mail
-- Agencia_Localidad
-- Agencia_Provincia

-- Agente_Legajo
-- Agente_Nombre
-- Agente_Apellido
-- Agente_Dni
-- Agente_Fecha_Nac
-- Agente_Telefono
-- Agente_Mail
-- Agente_Direccion
-- Agente_Localidad
-- Agente_Provincia

-- Cliente_Nombre
-- Cliente_Apellido
-- Cliente_Dni
-- Cliente_Tel
-- Cliente_Mail
-- Cliente_Direccion
-- Cliente_Fecha_Nac
-- Cliente_Localidad
-- Cliente_Provincia

-- Aeropuerto_Salida_Codigo
-- Aeropuerto_Salida_Descripcion
-- Aeropuerto_Salida_Ciudad
-- Aeropuerto_Salida_Pais
-- Aeropuerto_Llegada_Codigo
-- Aeropuerto_Llegada_Descripcion
-- Aeropuerto_Llegada_Ciudad
-- Aeropuerto_Llegada_Pais

-- Aerolinea_Nombre
-- Aerolinea_Codigo
-- Aerolinea_Pais
-- Aerolinea_Alianza

-- Vuelo_Fecha_Salida
-- Vuelo_Horario_Salida
-- Vuelo_Fecha_Llegada
-- Vuelo_Horario_Llegada
-- Vuelo_Duracion
-- Vuelo_Precio
-- Vuelo_Incluye_Carry
-- Vuelo_Incluye_Valija

-- Venta_Nro_Venta
-- Venta_Fecha_Venta
-- Venta_Canal_Venta
-- Venta_Medio_Pago
-- Venta_Subtotal
-- Venta_Descuento
-- Venta_Importe_Total

-- Detalle_Venta_Vuelo_Cantidad_Pasajes
-- Detalle_Venta_Vuelo_Precio_Unitario
-- Detalle_Venta_Vuelo_Subtotal
-- Detalle_Venta_Vuelo_Cod_Reserva

---- NULOS:

-- Solicitud_Nro_Solicitud
-- Solicitud_Fecha_Solicitud
-- Solicitud_Fecha_Inicio_Tentativa
-- Solicitud_Fecha_Fin_Tentativa
-- Solicitud_Cant_Pax
-- Solicitud_Observaciones
-- Solicitud_Presupuesto_Estimado

-- Detalle_Solicitud_Ciudad
-- Detalle_Solicitud_Cant_Dias_Aprox
-- Detalle_Solicitud_Observaciones

-- Propuesta_Nro_Propuesta
-- Propuesta_Fecha_Emision
-- Propuesta_Vigencia_Hasta
-- Propuesta_Fecha_Desde
-- Propuesta_Fecha_Hasta
-- Propuesta_Subtotal
-- Propuesta_Descuento
-- Propuesta_Importe_Total
-- Propuesta_Estado

-- Detalle_Propuesta_Vuelo_Cant_Pasajes
-- Detalle_Propuesta_Vuelo_Precio
-- Detalle_Propuesta_Vuelo_Subtotal
-- Detalle_Propuesta_Hospedaje_Fecha_Desde
-- Detalle_Propuesta_Hospedaje_Fecha_Hasta
-- Detalle_Propuesta_Hospedaje_Cant
-- Detalle_Propuesta_Hospedaje_Precio
-- Detalle_Propuesta_Hospedaje_Subtotal

-- Proveedor_Nombre
-- Proveedor_Mail
-- Proveedor_Telefono

-- Hospedaje_Ciudad
-- Hospedaje_Pais
-- Hospedaje_Nombre
-- Hospedaje_Direccion
-- Hospedaje_Incluye_Desayuno
-- Hospedaje_Check_In
-- Hospedaje_Check_Out

-- Habitacion_Nombre
-- Habitacion_Descripcion
-- Habitacion_Precio_Noche

-- Excursion_Nombre
-- Excursion_Descripcion
-- Excursion_Horario
-- Excursion_Duracion
-- Excursion_Precio

-- Detalle_Venta_Hospedaje_Fecha_Desde
-- Detalle_Venta_Hospedaje_Fecha_Hasta
-- Detalle_Venta_Hospedaje_Cantidad
-- Detalle_Venta_Hospedaje_Precio_Unitario
-- Detalle_Venta_Hospedaje_Subtotal
-- Detalle_Venta_Hospedaje_Cod_Reserva

-- Detalle_Venta_Excursion_Fecha_Reserva
-- Detalle_Venta_Excursion_Cant
-- Detalle_Venta_Excursion_Precio_Unitario
-- Detalle_Venta_Excursion_Subtotal
-- Detalle_Venta_Excursion_Cod_Reserva

-- Aspecto_Aspecto

-- Encuesta_Codigo_Encuesta
-- Encuesta_Fecha_Encuesta
-- Encuesta_Comentarios

-- Detalle_Encuesta_Puntaje