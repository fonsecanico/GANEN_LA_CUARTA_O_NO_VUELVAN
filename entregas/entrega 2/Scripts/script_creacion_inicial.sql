USE GD1C2026
GO

--Drop Preventivo de Procedures OLTP---------------------------------------

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Provincias')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Provincias;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Localidades')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Localidades;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Direcciones')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Direcciones;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Estados')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Estados;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Paises')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Paises;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Ciudades')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ciudades;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Alianzas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Alianzas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Aerolineas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aerolineas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Aeropuertos')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aeropuertos;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Proveedores')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Proveedores;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Excursiones')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Excursiones;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Agencias')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agencias;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Agentes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agentes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Clientes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Clientes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Solicitudes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Solicitudes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Solicitudes_X_Ciudad')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Solicitudes_X_Ciudad;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Propuestas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Reservas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Reservas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Vuelos')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Vuelos;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Hospedajes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Hospedajes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Habitaciones')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Habitaciones;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Canales_Venta')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Canales_Venta;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Medios_Pago')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Medios_Pago;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Ventas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Ventas_X_Propuesta')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Propuesta;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Propuestas_X_Vuelo')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas_X_Vuelo;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Propuestas_X_Habitacion')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas_X_Habitacion;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Ventas_X_Vuelo')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Vuelo;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Ventas_X_Habitacion')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Habitacion;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Ventas_X_Excursion')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Excursion;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Encuestas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Encuestas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Aspectos')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aspectos;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Encuestas_X_Aspecto')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Encuestas_X_Aspecto;

GO

--DROP Preventivo de Tablas OLTP------------------------------------------------------

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Encuesta_Venta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Venta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Encuesta_Propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Propuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Encuesta_X_Aspecto')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_X_Aspecto;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Encuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Aspecto')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Venta_X_Excursion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Excursion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Venta_X_Habitacion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Habitacion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Venta_X_Vuelo')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Vuelo;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Propuesta_X_Habitacion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Habitacion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Propuesta_X_Vuelo')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Vuelo;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Venta_X_Propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Propuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Venta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Solicitud_X_Ciudad')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud_X_Ciudad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Solicitud')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Cliente')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Agente')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Agente;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Agencia')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Habitacion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Hospedaje')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Direccion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Localidad')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Provincia')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Estado_Propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Vuelo')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Aeropuerto')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Ciudad')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Aerolinea')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Pais')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Pais;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Reserva')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Alianza')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Excursion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Proveedor')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Medio_Pago')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Medio_Pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Canal_Venta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta;

--DROP Preventivo de Schema------------------------------------------------------------
IF EXISTS (SELECT name from sys.schemas WHERE name = 'GANEN_LA_CUARTA_O_NO_VUELVAN')
DROP SCHEMA GANEN_LA_CUARTA_O_NO_VUELVAN;

GO

--Comentar desde Aca hacia abajo para eliminar todo


--Creacion de Schema------------------------------------------------
CREATE SCHEMA GANEN_LA_CUARTA_O_NO_VUELVAN
GO

--Creacion de Tablas-------------------------------------------------

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta(
	Estado_Propuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Estado_Propuesta_Tipo NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia (
	Provincia_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Provincia_Nombre NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad (
	Localidad_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Localidad_Nombre NVARCHAR(510) not null,
	Localidad_ID_Provincia BIGINT not null,
	FOREIGN KEY (Localidad_ID_Provincia) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia(Provincia_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion (
	Direccion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Direccion NVARCHAR(510) not null,
	Direccion_ID_Localidad BIGINT,
	FOREIGN KEY (Direccion_ID_Localidad) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad(Localidad_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Pais (
	Pais_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Pais_Nombre NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad (
	Ciudad_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Ciudad_Nombre NVARCHAR(510) not null,
	Ciudad_ID_Pais BIGINT not null,
	FOREIGN KEY (Ciudad_ID_Pais) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Pais(Pais_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza (
	Alianza_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Alianza_Nombre NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea (
	Aerolinea_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Aerolinea_Nombre NVARCHAR(510) not null,
	Aerolinea_Codigo NVARCHAR(510) not null,
	Aerolinea_ID_Pais BIGINT not null,
	Aerolinea_ID_Alianza BIGINT not null,
	FOREIGN KEY (Aerolinea_ID_Pais) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Pais(Pais_ID),
	FOREIGN KEY (Aerolinea_ID_Alianza) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza(Alianza_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto (
	Aeropuerto_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Aeropuerto_Codigo NVARCHAR(20) not null,
	Aeropuerto_Descripcion NVARCHAR(400) not null,
	Aeropuerto_ID_Ciudad BIGINT not null,
	FOREIGN KEY (Aeropuerto_ID_Ciudad) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad(Ciudad_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor (
	Proveedor_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Proveedor_Nombre NVARCHAR(510) not null,
	Proveedor_Telefono NVARCHAR(510) not null,
	Proveedor_Mail NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion (
	Excursion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Excursion_Nombre NVARCHAR(510) not null,
	Excursion_Descripcion NVARCHAR(max) not null,
	Excursion_Horario NVARCHAR(100) not null,
	Excursion_Duracion int not null,
	Excursion_Precio decimal(18,2) not null,
	Excursion_ID_Proveedor BIGINT not null,
	FOREIGN KEY (Excursion_ID_Proveedor) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor(Proveedor_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia (
	Agencia_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Agencia_Nro_Agencia bigint not null,
	Agencia_Telefono NVARCHAR(510) not null,
	Agencia_Mail NVARCHAR(max) not null,
	Agencia_ID_Direccion BIGINT not null,
	FOREIGN KEY (Agencia_ID_Direccion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion(Direccion_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Agente (
	Agente_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Agente_Legajo bigint not null,
	Agente_Nombre NVARCHAR(510) not null,
	Agente_Apellido NVARCHAR(510) not null,
	Agente_DNI NVARCHAR(510) not null,
	Agente_Fecha_Nac date not null,
	Agente_Telefono NVARCHAR(510) not null,
	Agente_Mail NVARCHAR(510) not null,
	Agente_ID_Direccion BIGINT not null,
	Agente_ID_Agencia BIGINT not null,
	FOREIGN KEY (Agente_ID_Direccion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion(Direccion_ID),
	FOREIGN KEY (Agente_ID_Agencia) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia(Agencia_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente (
	Cliente_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Cliente_Nombre NVARCHAR(510) not null,
	Cliente_Apellido NVARCHAR(510) not null,
	Cliente_DNI NVARCHAR(510) not null,
	Cliente_Fecha_Nac date not null,
	Cliente_Telefono NVARCHAR(510) not null,
	Cliente_Mail NVARCHAR(510) not null,
	Cliente_ID_Direccion BIGINT not null,
	FOREIGN KEY (Cliente_ID_Direccion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion(Direccion_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud (
	Solicitud_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Solicitud_Nro_Solicitud bigint not null,
	Solicitud_Fecha_Solicitud date not null,
	Solicitud_Fecha_Inicio_Tentativa date not null,
	Solicitud_Fecha_Fin_Tentativa date not null,
	Solicitud_Cantidad_Pasajeros int not null,
	Solicitud_Observaciones NVARCHAR(max) not null,
	Solicitud_Presupuesto_Estimado decimal(18,2) not null,
	Solicitud_ID_Cliente BIGINT not null,
	Solicitud_ID_Agente BIGINT not null,
	FOREIGN KEY (Solicitud_ID_Cliente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente(Cliente_ID),
	FOREIGN KEY (Solicitud_ID_Agente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Agente(Agente_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud_X_Ciudad (
	Solicitud_X_Ciudad_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Solicitud_X_Ciudad_Cantidad_Dias int not null,
	Solicitud_X_Ciudad_Observaciones NVARCHAR(max) not null,
	Solicitud_X_Ciudad_ID_Solicitud BIGINT not null,
	Solicitud_X_Ciudad_ID_Ciudad BIGINT not null,
	FOREIGN KEY (Solicitud_X_Ciudad_ID_Solicitud) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud(Solicitud_ID),
	FOREIGN KEY (Solicitud_X_Ciudad_ID_Ciudad) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad(Ciudad_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta (
	Propuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Propuesta_Nro_Propuesta bigint not null,
	Propuesta_Fecha_Emision date not null,
	Propuesta_Fecha_Vigencia_Hasta date not null,
	Propuesta_Fecha_Desde date not null,
	Propuesta_Fecha_Hasta date not null,
	Propouesta_Subtotal decimal(18,2) not null,
	Propuesta_Descuento decimal(18,2) not null,
	Propuesta_Importe_Total decimal(18,2) not null,
	Propuesta_ID_Solicitud BIGINT not null,
	Propuesta_ID_Agente BIGINT not null,
	Propuesta_ID_Estado BIGINT not null,
	FOREIGN KEY (Propuesta_ID_Solicitud) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud(Solicitud_ID),
	FOREIGN KEY (Propuesta_ID_Agente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Agente(Agente_ID),
	FOREIGN KEY (Propuesta_ID_Estado) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta(Estado_Propuesta_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva (
	Reserva_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Reserva_Cod_Reserva NVARCHAR(510) not null,
	Reserva_Fecha_Reserva date
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo (
	Vuelo_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Vuelo_Fecha_Salida date not null,
	Vuelo_Horario_Salida nvarchar(100) not null,
	Vuelo_Fecha_Llegada date not null,
	Vuelo_Horario_Llegada nvarchar(100) not null,
	Vuelo_Duracion int not null,
	Vuelo_Precio decimal(18,2) not null,
	Vuelo_Incluye_Carry bit not null,
	Vuelo_Incluye_Valija bit not null,
	Vuelo_ID_Aeropuerto_Salida BIGINT not null,
	Vuelo_ID_Aeropuerto_Llegada BIGINT not null,
	Vuelo_ID_Aerolinea BIGINT not null,
	FOREIGN KEY (Vuelo_ID_Aeropuerto_Salida) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto(Aeropuerto_ID),
	FOREIGN KEY (Vuelo_ID_Aeropuerto_Llegada) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto(Aeropuerto_ID),
	FOREIGN KEY (Vuelo_ID_Aerolinea) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea(Aerolinea_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje (
	Hospedaje_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Hospedaje_Nombre nvarchar(510) not null,
	Hospedaje_Incluye_Desayuno bit not null,
	Hospedaje_Check_In nvarchar(100) not null,
	Hospedaje_Check_Out nvarchar(100) not null,
	Hospedaje_ID_Ciudad BIGINT not null,
	Hospedaje_ID_Direccion BIGINT not null,
	FOREIGN KEY (Hospedaje_ID_Ciudad) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad(Ciudad_ID),
	FOREIGN KEY (Hospedaje_ID_Direccion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion(Direccion_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion (
	Habitacion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Habitacion_Nombre nvarchar(510) not null,
	Habitacion_Descripcion nvarchar(max) not null,
	Habitacion_Precio decimal(18,2) not null,
	Habitacion_ID_Hospedaje BIGINT not null,
	FOREIGN KEY (Habitacion_ID_Hospedaje) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje(Hospedaje_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta(
	Canal_venta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Canal_Venta_Nombre NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Medio_Pago(
	Medio_Pago_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Medio_Pago_Nombre NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta (
	Venta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Venta_Nro_Venta bigint not null,
	Venta_Fecha_Venta date not null,
	Venta_Subtotal decimal(18,2) not null,
	Venta_Descuento decimal(18,2) not null,
	Venta_Importe_Total decimal(18,2) not null,
	Venta_ID_Cliente BIGINT not null,
	Venta_ID_Agente BIGINT not null,
	Venta_ID_Agencia BIGINT not null,
	Venta_ID_Medio_Pago BIGINT not null,
	Venta_ID_Canal_Venta BIGINT not null,
	FOREIGN KEY (Venta_ID_Cliente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente(Cliente_ID),
	FOREIGN KEY (Venta_ID_Agente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Agente(Agente_ID),
	FOREIGN KEY (Venta_ID_Agencia) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia(Agencia_ID),
	FOREIGN KEY (Venta_ID_Medio_Pago) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Medio_Pago(Medio_Pago_ID),
	FOREIGN KEY (Venta_ID_Canal_Venta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta(Canal_Venta_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Propuesta (
	Venta_X_Propuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Venta_X_Propuesta_ID_Venta BIGINT not null,
	Venta_X_Propuesta_ID_Propuesta BIGINT not null,
	FOREIGN KEY (Venta_X_Propuesta_ID_Venta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Venta(Venta_ID),
	FOREIGN KEY (Venta_X_Propuesta_ID_Propuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta(Propuesta_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Vuelo (
	Propuesta_X_Vuelo_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Propuesta_X_Vuelo_Cantidad_Pasajes int not null,
	Propuesta_X_Vuelo_Precio_Unitario decimal(18,2) not null,
	Propuesta_X_Vuelo_Subtotal decimal(18,2) not null,
	Propuesta_X_Vuelo_ID_Vuelo BIGINT not null,
	Propuesta_X_Vuelo_ID_Propuesta BIGINT not null,
	FOREIGN KEY (Propuesta_X_Vuelo_ID_Vuelo) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo(Vuelo_ID),
	FOREIGN KEY (Propuesta_X_Vuelo_ID_Propuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta(Propuesta_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Habitacion (
	Propuesta_X_Habitacion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Propuesta_X_Habitacion_Fecha_Desde date not null,
	Propuesta_X_Habitacion_Fecha_Hasta date not null,
	Propuesta_X_Habitacion_Cantidad_Habitaciones int not null,
	Propuesta_X_Habitacion_Precio_Unitario decimal(18,2) not null,
	Propuesta_X_Habitacion_Subtotal decimal(18,2) not null,
	Propuesta_X_Habitacion_ID_Habitacion BIGINT not null,
	Propuesta_X_Habitacion_ID_Propuesta BIGINT not null,
	FOREIGN KEY (Propuesta_X_Habitacion_ID_Habitacion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion(Habitacion_ID),
	FOREIGN KEY (Propuesta_X_Habitacion_ID_Propuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta(Propuesta_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Vuelo (
	Venta_X_Vuelo_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Venta_X_Vuelo_Cantidad_Pasajes int not null,
	Venta_X_Vuelo_Precio_Unitario decimal(18,2) not null,
	Venta_X_Vuelo_Subtotal decimal(18,2) not null,
	Venta_X_Vuelo_ID_Vuelo BIGINT not null,
	Venta_X_Vuelo_ID_Venta BIGINT not null,
	Venta_X_Vuelo_ID_Reserva BIGINT not null,
	FOREIGN KEY (Venta_X_Vuelo_ID_Vuelo) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo(Vuelo_ID),
	FOREIGN KEY (Venta_X_Vuelo_ID_Venta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Venta(Venta_ID),
	FOREIGN KEY (Venta_X_Vuelo_ID_Reserva) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva(Reserva_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Habitacion (
	Venta_X_Habitacion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Venta_X_Habitacion_Fecha_Desde date not null,
	Venta_X_Habitacion_Fecha_Hasta date not null,
	Venta_X_Habitacion_Cantidad_Habitaciones int not null,
	Venta_X_Habitacion_Precio_Unitario decimal(18,2) not null,
	Venta_X_Habitacion_Subtotal decimal(18,2) not null,
	Venta_X_Habitacion_ID_Habitacion BIGINT not null,
	Venta_X_Habitacion_ID_Venta BIGINT not null,
	Venta_X_Habitacion_ID_Reserva BIGINT not null,
	FOREIGN KEY (Venta_X_Habitacion_ID_Habitacion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion(Habitacion_ID),
	FOREIGN KEY (Venta_X_Habitacion_ID_Venta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Venta(Venta_ID),
	FOREIGN KEY (Venta_X_Habitacion_ID_Reserva) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva(Reserva_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Excursion (
	Venta_X_Excursion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Venta_X_Excursion_Fecha_Reserva date not null,
	Venta_X_Excursion_Cantidad int not null,
	Venta_X_Excursion_Precio_Unitario decimal(18,2) not null,
	Venta_X_Excursion_Subtotal decimal(18,2) not null,
	Venta_X_Excursion_ID_Excursion BIGINT not null,
	Venta_X_Excursion_ID_Venta BIGINT not null,
	Venta_X_Excursion_ID_Reserva BIGINT not null,
	FOREIGN KEY (Venta_X_Excursion_ID_Excursion) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion(Excursion_ID),
	FOREIGN KEY (Venta_X_Excursion_ID_Venta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Venta(Venta_ID),
	FOREIGN KEY (Venta_X_Excursion_ID_Reserva) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva(Reserva_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto (
	Aspecto_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Aspecto_Tipo NVARCHAR(510) not null
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta (
	Encuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Encuesta_Fecha_Encuesta date not null,
	Encuesta_Codigo_Encuesta bigint not null,
	Encuesta_Comentarios nvarchar(max) not null,
	Encuesta_ID_Cliente BIGINT not null,
	Encuesta_ID_Agente BIGINT not null,
	FOREIGN KEY (Encuesta_ID_Cliente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente(Cliente_ID),
	FOREIGN KEY (Encuesta_ID_Agente) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Agente(Agente_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_X_Aspecto (
	Encuesta_X_Aspecto_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Encuesta_X_Aspecto_Puntaje int not null,
	Encuesta_X_Aspecto_ID_Encuesta BIGINT not null,
	Encuesta_X_Aspecto_ID_Aspecto BIGINT not null,
	FOREIGN KEY (Encuesta_X_Aspecto_ID_Encuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta(Encuesta_ID),
	FOREIGN KEY (Encuesta_X_Aspecto_ID_Aspecto) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto(Aspecto_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Venta (
	Encuesta_Venta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Encuesta_Venta_ID_Encuesta BIGINT not null,
	Encuesta_Venta_ID_Venta BIGINT not null,
	FOREIGN KEY (Encuesta_Venta_ID_Encuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta(Encuesta_ID),
	FOREIGN KEY (Encuesta_Venta_ID_Venta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Venta(Venta_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Propuesta (
	Encuesta_Propuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Encuesta_Propuesta_ID_Encuesta BIGINT not null,
	Encuesta_Propuesta_ID_Propuesta BIGINT not null,
	FOREIGN KEY (Encuesta_Propuesta_ID_Encuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta(Encuesta_ID),
	FOREIGN KEY (Encuesta_Propuesta_ID_Propuesta) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta(Propuesta_ID)
);


GO

--Creacion de Stored Procedures para Migracion------------------------

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Provincias
 AS
  BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia(Provincia_Nombre)
	SELECT DISTINCT Cliente_Provincia --Cliente Provincia tiene las 24 provincias del Pais
	FROM gd_esquema.Maestra
	WHERE Cliente_Provincia IS NOT NULL
  END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Localidades
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad (Localidad_Nombre, Localidad_ID_Provincia)
		SELECT DISTINCT x.Localidad, p.Provincia_ID AS ProvinciaID
		FROM gd_esquema.Maestra t
		CROSS APPLY (
			VALUES 
				(t.Cliente_Localidad, t.Cliente_Provincia),
				(t.Agente_Localidad, t.Agente_Provincia),
				(t.Agencia_Localidad, t.Agencia_Provincia)
		) AS x(Localidad, NombreProvincia)
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia p ON p.Provincia_Nombre = x.NombreProvincia
		WHERE x.Localidad IS NOT NULL
		  AND x.NombreProvincia IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Direcciones
 AS
	BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion(Direccion, Direccion_ID_Localidad)
		SELECT DISTINCT x.Direccion, l.Localidad_ID AS LocalidadID
		FROM gd_esquema.Maestra t
		CROSS APPLY (
			VALUES 
				(t.Cliente_Direccion, t.Cliente_Localidad, t.Cliente_Provincia),
				(t.Agente_Direccion, t.Agente_Localidad, t.Agente_Provincia),
				(t.Agencia_Direccion, t.Agencia_Localidad, t.Agencia_Provincia)
		) AS x(Direccion, NombreLocalidad, NombreProvincia)
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia p ON p.Provincia_Nombre = x.NombreProvincia
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad l on l.Localidad_ID_Provincia = p.Provincia_ID and l.Localidad_Nombre = x.NombreLocalidad
		WHERE x.Direccion IS NOT NULL
		  AND x.NombreProvincia IS NOT NULL
		  AND x.NombreLocalidad IS NOT NULL

		UNION

		SELECT DISTINCT --Dsp de hacer unas querys, se comprobo que no ninguna de las direcciones de Hospedaje es igual a las otras; xq lo que este union no va a meter elementos repetidos
			t.Hospedaje_Direccion AS Direccion,
			CAST(NULL AS BIGINT) AS Direccion_ID_Localidad
		FROM gd_esquema.Maestra t
		WHERE t.Hospedaje_Direccion IS NOT NULL;

	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Estados
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta(Estado_Propuesta_Tipo)
		SELECT DISTINCT Propuesta_Estado
		FROM gd_esquema.Maestra
		WHERE Propuesta_Estado IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Paises
 AS
  BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Pais (Pais_Nombre)
	SELECT DISTINCT Hospedaje_Pais
	FROM gd_esquema.Maestra
	WHERE Hospedaje_Pais IS NOT NULL

	UNION

	SELECT DISTINCT m.Aerolinea_Pais
	FROM gd_esquema.Maestra m
	WHERE m.Aerolinea_Pais IS NOT NULL
	  AND NOT EXISTS (
		  SELECT 1
		  FROM gd_esquema.Maestra m2
		  WHERE m2.Hospedaje_Pais
			  = m.Aerolinea_Pais
	  );
  END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ciudades
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad(Ciudad_Nombre, Ciudad_ID_Pais)
		SELECT DISTINCT m.Hospedaje_Ciudad, p.Pais_ID --Todas las ciudades estan en Hospedaje_Ciudad
		FROM gd_esquema.Maestra m
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Pais p on p.Pais_Nombre = m.Hospedaje_Pais
		WHERE Propuesta_Estado IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Alianzas
 AS
  BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza(Alianza_Nombre)
	SELECT DISTINCT Aerolinea_Alianza
	FROM gd_esquema.Maestra
	WHERE Aerolinea_Alianza IS NOT NULL
  END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aerolineas
 AS	
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea(Aerolinea_Nombre, Aerolinea_Codigo, Aerolinea_ID_Pais ,Aerolinea_ID_Alianza)
		SELECT DISTINCT  t.Aerolinea_Nombre , t.Aerolinea_Codigo, p.Pais_ID, a.Alianza_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza a
			ON a.Alianza_Nombre = t.Aerolinea_Alianza
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Pais p
			ON p.Pais_Nombre = t.Aerolinea_Pais
		WHERE t.Aerolinea_Alianza IS NOT NULL 
			AND t.Aerolinea_Pais IS NOT NULL
			AND t.Aerolinea_Nombre IS NOT NULL
			AND t.Aerolinea_Codigo IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aeropuertos
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto(Aeropuerto_Codigo, Aeropuerto_Descripcion, Aeropuerto_ID_Ciudad)
		SELECT DISTINCT t.Aeropuerto_Salida_Codigo, t.Aeropuerto_Salida_Descripcion, c.Ciudad_ID --Aeropuerto Salida tiene todos los aeropuertos
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Pais p ON p.Pais_Nombre = t.Aeropuerto_Salida_Pais
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad c on c.Ciudad_ID_Pais = p.Pais_ID and c.Ciudad_Nombre = t.Aeropuerto_Salida_Ciudad
		WHERE t.Aeropuerto_Salida_Codigo IS NOT NULL
		  AND t.Aeropuerto_Salida_Descripcion IS NOT NULL
		  AND t.Aeropuerto_Salida_Pais IS NOT NULL
		  AND t.Aeropuerto_Salida_Ciudad IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Proveedores
 AS
  BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor(Proveedor_Nombre, Proveedor_Telefono, Proveedor_Mail)
	SELECT DISTINCT t.Proveedor_Nombre, t.Proveedor_Telefono, t.Proveedor_Mail
	FROM gd_esquema.Maestra t
	WHERE t.Proveedor_Nombre IS NOT NULL
		AND t.Proveedor_Mail IS NOT NULL
		AND t.Proveedor_Telefono IS NOT NULL
  END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Excursiones
 AS	
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion(Excursion_Nombre, Excursion_Descripcion, Excursion_Horario, Excursion_Duracion, Excursion_Precio, Excursion_ID_Proveedor)
		SELECT DISTINCT  t.Excursion_Nombre, t.Excursion_Descripcion, t.Excursion_Horario, t.Excursion_Duracion, t.Excursion_Precio, p.Proveedor_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor p
			ON p.Proveedor_Nombre = t.Proveedor_Nombre
			AND p.Proveedor_Mail = t.Proveedor_Mail
			AND p.Proveedor_Telefono = t.Proveedor_Telefono
		WHERE t.Excursion_Nombre IS NOT NULL 
			AND t.Excursion_Duracion IS NOT NULL
			AND t.Excursion_Descripcion IS NOT NULL
			AND t.Excursion_Horario IS NOT NULL
			AND t.Excursion_Precio IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agencias
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia(Agencia_Nro_Agencia, Agencia_Telefono, Agencia_Mail, Agencia_ID_Direccion)
		SELECT DISTINCT t.Agencia_Nro_Agencia, t.Agencia_Telefono, t.Agencia_Mail, d.Direccion_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia p ON p.Provincia_Nombre = t.Agencia_Provincia
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad l on l.Localidad_ID_Provincia = p.Provincia_ID and l.Localidad_Nombre = t.Agencia_Localidad
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion d ON d.Direccion_ID_Localidad = l.Localidad_ID and d.Direccion = t.Agencia_Direccion
		WHERE t.Agencia_Direccion IS NOT NULL
		  AND t.Agencia_Localidad IS NOT NULL
		  AND t.Agencia_Provincia IS NOT NULL
		  AND t.Agencia_Nro_Agencia IS NOT NULL
		  AND t.Agencia_Mail IS NOT NULL
		  AND t.Agencia_Telefono IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agentes
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Agente(Agente_Legajo, Agente_Nombre, Agente_Apellido, Agente_Mail, Agente_DNI, Agente_Fecha_Nac, Agente_Telefono, Agente_ID_Direccion, Agente_ID_Agencia)
		SELECT DISTINCT t.Agente_Legajo, t.Agente_Nombre, t.Agente_Apellido, t.Agente_Mail, t.Agente_Dni, t.Agente_Fecha_Nac, t.Agente_Telefono, d.Direccion_ID, a.Agencia_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia p ON p.Provincia_Nombre = t.Agente_Provincia
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad l on l.Localidad_ID_Provincia = p.Provincia_ID and l.Localidad_Nombre = t.Agente_Localidad
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion d ON d.Direccion_ID_Localidad = l.Localidad_ID and d.Direccion = t.Agente_Direccion
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia a 
			on a.Agencia_Nro_Agencia = t.Agencia_Nro_Agencia
			AND a.Agencia_Telefono = t.Agencia_Telefono
			AND a.Agencia_Mail = t.Agencia_Mail
		WHERE t.Agente_Legajo IS NOT NULL
		  AND t.Agente_Nombre IS NOT NULL
		  AND t.Agente_Apellido IS NOT NULL
		  AND t.Agente_Mail IS NOT NULL
		  AND t.Agente_Dni IS NOT NULL
		  AND t.Agente_Fecha_Nac IS NOT NULL
		  AND t.Agente_Telefono IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Clientes
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente(Cliente_Nombre, Cliente_Apellido, Cliente_DNI, Cliente_Fecha_Nac, Cliente_Telefono, Cliente_Mail, Cliente_ID_Direccion)
		SELECT DISTINCT t.Cliente_Nombre, t.Cliente_Apellido, t.Cliente_Dni, t.Cliente_Fecha_Nac, t.Cliente_Tel, t.Cliente_Mail, d.Direccion_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia p ON p.Provincia_Nombre = t.Cliente_Provincia
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad l on l.Localidad_ID_Provincia = p.Provincia_ID and l.Localidad_Nombre = t.Cliente_Localidad
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion d ON d.Direccion_ID_Localidad = l.Localidad_ID and d.Direccion = t.Cliente_Direccion
		WHERE t.Cliente_Direccion IS NOT NULL
		  AND t.Cliente_Localidad IS NOT NULL
		  AND t.Cliente_Provincia IS NOT NULL
		  AND t.Cliente_Nombre IS NOT NULL
		  AND t.Cliente_Apellido IS NOT NULL
		  AND t.Cliente_Mail IS NOT NULL
		  AND t.Cliente_Dni IS NOT NULL
		  AND t.Cliente_Fecha_Nac IS NOT NULL
		  AND t.Cliente_Tel IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Solicitudes 
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud(Solicitud_Nro_Solicitud, Solicitud_Fecha_Solicitud, Solicitud_Fecha_Inicio_Tentativa, Solicitud_Fecha_Fin_Tentativa, Solicitud_Cantidad_Pasajeros, Solicitud_Observaciones, Solicitud_Presupuesto_Estimado, Solicitud_ID_Cliente, Solicitud_ID_Agente)
		SELECT DISTINCT  t.Solicitud_Nro_Solicitud, t.Solicitud_Fecha_Solicitud, t.Solicitud_Fecha_Inicio_Tentativa, t.Solicitud_Fecha_Fin_Tentativa, t.Solicitud_Cant_Pax, ISNULL(t.Solicitud_Observaciones,''), t.Solicitud_Presupuesto_Estimado, c.Cliente_ID, a.Agente_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente c
			ON c.Cliente_Nombre = t.Cliente_Nombre
			AND c.Cliente_Apellido = t.Cliente_Apellido
			AND c.Cliente_DNI = t.Cliente_Dni
			AND c.Cliente_Mail = t.Cliente_Mail
			AND c.Cliente_Fecha_Nac = t.Cliente_Fecha_Nac
			AND c.Cliente_Telefono = t.Cliente_Tel
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agente a
			ON a.Agente_DNI = t.Agente_Dni
			AND a.Agente_Nombre = t.Agente_Nombre
			AND a.Agente_Apellido = t.Agente_Apellido
			AND a.Agente_Fecha_Nac = t.Agente_Fecha_Nac
			AND a.Agente_Legajo = t.Agente_Legajo
			AND a.Agente_Mail = t.Agente_Mail
			AND a.Agente_Telefono = t.Agente_Telefono
		WHERE t.Solicitud_Nro_Solicitud IS NOT NULL 
			AND t.Solicitud_Fecha_Solicitud IS NOT NULL
			AND t.Solicitud_Fecha_Inicio_Tentativa IS NOT NULL
			AND t.Solicitud_Fecha_Fin_Tentativa IS NOT NULL
			AND t.Solicitud_Cant_Pax IS NOT NULL
			AND t.Solicitud_Presupuesto_Estimado IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Solicitudes_X_Ciudad
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud_X_Ciudad(Solicitud_X_Ciudad_Cantidad_Dias, Solicitud_X_Ciudad_Observaciones, Solicitud_X_Ciudad_ID_Ciudad, Solicitud_X_Ciudad_ID_Solicitud)
		SELECT DISTINCT t.Detalle_Solicitud_Cant_Dias_Aprox, ISNULL(t.Detalle_Solicitud_Observaciones,''), c.Ciudad_ID, s.Solicitud_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad c
			ON c.Ciudad_Nombre = t.Detalle_Solicitud_Ciudad
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud S
			ON s.Solicitud_Nro_Solicitud = t.Solicitud_Nro_Solicitud
			AND s.Solicitud_Cantidad_Pasajeros = t.Solicitud_Cant_Pax
			AND s.Solicitud_Fecha_Fin_Tentativa = t.Solicitud_Fecha_Fin_Tentativa
			AND s.Solicitud_Fecha_Inicio_Tentativa = t.Solicitud_Fecha_Inicio_Tentativa
			AND s.Solicitud_Fecha_Solicitud = t.Solicitud_Fecha_Solicitud
			AND s.Solicitud_Presupuesto_Estimado = t.Solicitud_Presupuesto_Estimado
		WHERE t.Detalle_Solicitud_Cant_Dias_Aprox IS NOT NULL
		  AND t.Detalle_Solicitud_Ciudad IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas 
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta(Propuesta_Nro_Propuesta, Propuesta_Fecha_Emision, Propuesta_Fecha_Vigencia_Hasta, Propuesta_Fecha_Desde, Propuesta_Fecha_Hasta, Propouesta_Subtotal, Propuesta_Descuento, Propuesta_Importe_Total, Propuesta_ID_Solicitud, Propuesta_ID_Agente, Propuesta_ID_Estado)
		SELECT DISTINCT  t.Propuesta_Nro_Propuesta, t.Propuesta_Fecha_Emision, t.Propuesta_Vigencia_Hasta, t.Propuesta_Fecha_Desde, t.Propuesta_Fecha_Hasta, t.Propuesta_Subtotal, t.Propuesta_Descuento, t.Propuesta_Importe_Total, s.Solicitud_ID, a.Agente_ID, e.Estado_Propuesta_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud s
			ON s.Solicitud_Nro_Solicitud = t.Solicitud_Nro_Solicitud
			AND s.Solicitud_Cantidad_Pasajeros = t.Solicitud_Cant_Pax
			AND s.Solicitud_Fecha_Fin_Tentativa = t.Solicitud_Fecha_Fin_Tentativa
			AND s.Solicitud_Fecha_Inicio_Tentativa = t.Solicitud_Fecha_Inicio_Tentativa
			AND s.Solicitud_Fecha_Solicitud = t.Solicitud_Fecha_Solicitud
			AND s.Solicitud_Presupuesto_Estimado = t.Solicitud_Presupuesto_Estimado
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agente a
			ON a.Agente_DNI = t.Agente_Dni
			AND a.Agente_Nombre = t.Agente_Nombre
			AND a.Agente_Apellido = t.Agente_Apellido
			AND a.Agente_Fecha_Nac = t.Agente_Fecha_Nac
			AND a.Agente_Legajo = t.Agente_Legajo
			AND a.Agente_Mail = t.Agente_Mail
			AND a.Agente_Telefono = t.Agente_Telefono
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta e
			on e.Estado_Propuesta_Tipo = t.Propuesta_Estado
		WHERE t.Propuesta_Nro_Propuesta IS NOT NULL
			AND t.Propuesta_Fecha_Emision IS NOT NULL
			AND t.Propuesta_Vigencia_Hasta IS NOT NULL
			AND t.Propuesta_Fecha_Desde IS NOT NULL
			AND t.Propuesta_Fecha_Hasta IS NOT NULL
			AND t.Propuesta_Subtotal IS NOT NULL
			AND t.Propuesta_Descuento IS NOT NULL
			AND t.Propuesta_Importe_Total IS NOT NULL
			AND t.Propuesta_Estado IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Reservas
 AS
	BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva(Reserva_Cod_Reserva, Reserva_Fecha_Reserva)
		SELECT DISTINCT Detalle_Venta_Excursion_Cod_Reserva, Detalle_Venta_Excursion_Fecha_Reserva
		FROM gd_esquema.Maestra t
		WHERE Detalle_Venta_Excursion_Cod_Reserva is not null
		AND Detalle_Venta_Excursion_Fecha_Reserva IS NOT NULL

		--Dsp de hacer unas querys, se comprobo que ninguno de los 3 tienen codigos de reserva repetidos; xq lo que esto no va a meter nulls

		UNION

		SELECT DISTINCT 
			t.Detalle_Venta_Hospedaje_Cod_Reserva as Reserva_Cod_Reserva,
			CAST(NULL AS DATE) AS Reserva_Fecha_Reserva
		FROM gd_esquema.Maestra t
		WHERE t.Detalle_Venta_Hospedaje_Cod_Reserva IS NOT NULL

		UNION

		SELECT DISTINCT 
			t.Detalle_Venta_Vuelo_Cod_Reserva as Reserva_Cod_Reserva,
			CAST(NULL AS DATE) AS Reserva_Fecha_Reserva
		FROM gd_esquema.Maestra t
		WHERE t.Detalle_Venta_Vuelo_Cod_Reserva IS NOT NULL;

	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Vuelos 
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo(Vuelo_Fecha_Salida, Vuelo_Horario_Salida, Vuelo_Fecha_Llegada, Vuelo_Horario_Llegada, Vuelo_Duracion, Vuelo_Incluye_Carry, Vuelo_Incluye_Valija, Vuelo_Precio, Vuelo_ID_Aerolinea, Vuelo_ID_Aeropuerto_Llegada, Vuelo_ID_Aeropuerto_Salida)
		SELECT DISTINCT  t.Vuelo_Fecha_Salida, t.Vuelo_Horario_Salida, t.Vuelo_Fecha_Llegada, t.Vuelo_Horario_Llegada, t.Vuelo_Duracion, t.Vuelo_Incluye_Carry, t.Vuelo_Incluye_Valija, t.Vuelo_Precio, al.Aerolinea_ID, ap1.Aeropuerto_ID, ap2.Aeropuerto_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea al
			ON al.Aerolinea_Codigo = t.Aerolinea_Codigo
			AND al.Aerolinea_Nombre = t.Aerolinea_Nombre
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto ap1
			ON ap1.Aeropuerto_Codigo = t.Aeropuerto_Llegada_Codigo
			AND ap1.Aeropuerto_Descripcion = t.Aeropuerto_Llegada_Descripcion
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto ap2
			ON ap2.Aeropuerto_Codigo = t.Aeropuerto_Salida_Codigo
			AND ap2.Aeropuerto_Descripcion = t.Aeropuerto_Salida_Descripcion
		WHERE t.Vuelo_Fecha_Salida IS NOT NULL
			AND t.Vuelo_Horario_Salida IS NOT NULL
			AND t.Vuelo_Fecha_Llegada IS NOT NULL
			AND t.Vuelo_Horario_Llegada IS NOT NULL
			AND t.Vuelo_Duracion IS NOT NULL
			AND t.Vuelo_Incluye_Carry IS NOT NULL
			AND t.Vuelo_Incluye_Valija IS NOT NULL
			AND t.Vuelo_Precio IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Hospedajes
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje(Hospedaje_Nombre, Hospedaje_Incluye_Desayuno, Hospedaje_Check_In, Hospedaje_Check_Out, Hospedaje_ID_Ciudad, Hospedaje_ID_Direccion)
		SELECT DISTINCT  t.Hospedaje_Nombre, t.Hospedaje_Incluye_Desayuno, t.Hospedaje_Check_In, t.Hospedaje_Check_Out, c.Ciudad_ID, d.Direccion_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion d
			ON d.Direccion = t.Hospedaje_Direccion
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Pais p ON p.Pais_Nombre = t.Hospedaje_Pais
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad c on c.Ciudad_ID_Pais = p.Pais_ID and c.Ciudad_Nombre = t.Hospedaje_Ciudad
		WHERE t.Hospedaje_Nombre IS NOT NULL
			AND t.Hospedaje_Incluye_Desayuno IS NOT NULL
			AND t.Hospedaje_Check_Out IS NOT NULL
			AND t.Hospedaje_Check_In IS NOT NULL
			
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Habitaciones
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion(Habitacion_Nombre, Habitacion_Descripcion, Habitacion_Precio, Habitacion_ID_Hospedaje)
		SELECT DISTINCT  t.Habitacion_Nombre, t.Habitacion_Descripcion, t.Habitacion_Precio_Noche, h.Hospedaje_ID
		FROM  gd_esquema.Maestra t 
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje h
			ON h.Hospedaje_Nombre = t.Hospedaje_Nombre
			AND h.Hospedaje_Check_In = t.Hospedaje_Check_In
			AND h.Hospedaje_Check_Out = t.Hospedaje_Check_Out
			and t.Hospedaje_Incluye_Desayuno = t.Hospedaje_Incluye_Desayuno
		WHERE t.Habitacion_Nombre IS NOT NULL
			AND t.Habitacion_Descripcion IS NOT NULL
			AND t.Habitacion_Precio_Noche IS NOT NULL
			
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Medios_Pago
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Medio_Pago(Medio_Pago_Nombre)
		SELECT DISTINCT Venta_Medio_Pago
		FROM gd_esquema.Maestra
		WHERE Venta_Medio_Pago IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Canales_Venta
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta
		SELECT DISTINCT Venta_Canal_Venta
		FROM gd_esquema.Maestra
		WHERE Venta_Canal_Venta IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Venta(Venta_Nro_Venta, Venta_Fecha_Venta, Venta_Subtotal, Venta_Descuento, Venta_Importe_Total, Venta_ID_Cliente, Venta_ID_Agente, Venta_ID_Agencia, Venta_ID_Medio_Pago, Venta_ID_Canal_Venta)
		SELECT DISTINCT t.Venta_Nro_Venta, t.Venta_Fecha_Venta, t.Venta_Subtotal, t.Venta_Descuento, t.Venta_Importe_Total, c.Cliente_ID, agt.Agente_ID, aci.Agencia_ID, mp.Medio_Pago_ID, cv.Canal_venta_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente c
			ON c.Cliente_DNI = t.Cliente_Dni
			AND c.Cliente_Nombre = t.Cliente_Nombre
			AND c.Cliente_Apellido = t.Cliente_Apellido
			AND c.Cliente_Telefono = t.Cliente_Tel
			AND c.Cliente_Mail = t.Cliente_Mail
			AND c.Cliente_Fecha_Nac = t.Cliente_Fecha_Nac
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agente agt
			ON agt.Agente_DNI = t.Agente_Dni
			AND agt.Agente_Nombre = t.Agente_Nombre
			AND agt.Agente_Apellido = t.Agente_Apellido
			AND agt.Agente_Legajo = t.Agente_Legajo
			AND agt.Agente_Mail = t.Agente_Mail
			AND agt.Agente_Fecha_Nac = t.Agente_Fecha_Nac
			AND agt.Agente_Telefono = t.Agente_Telefono
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia aci 
			ON aci.Agencia_Nro_Agencia = t.Agencia_Nro_Agencia
			AND aci.Agencia_Telefono = t.Agencia_Telefono
			AND aci.Agencia_Mail = t.Agencia_Mail
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Medio_Pago mp
			ON mp.Medio_Pago_Nombre = t.Venta_Medio_Pago
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta cv
			ON cv.Canal_Venta_Nombre = t.Venta_Canal_Venta
		WHERE t.Venta_Nro_Venta IS NOT NULL
		  AND t.Venta_Fecha_Venta IS NOT NULL
		  AND t.Venta_Subtotal IS NOT NULL
		  AND t.Venta_Descuento IS NOT NULL
		  AND t.Venta_Importe_Total IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Propuesta
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Propuesta(Venta_X_Propuesta_ID_Venta, Venta_X_Propuesta_ID_Propuesta)
		SELECT DISTINCT v.Venta_ID, p.Propuesta_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Venta v
			ON v.Venta_Nro_Venta = t.Venta_Nro_Venta
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta p
			ON p.Propuesta_Nro_Propuesta = t.Propuesta_Nro_Propuesta
		WHERE t.Propuesta_Nro_Propuesta IS NOT NULL
		  AND t.Venta_Nro_Venta IS NOT NULL

		 
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas_X_Vuelo
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Vuelo(Propuesta_X_Vuelo_Cantidad_Pasajes, Propuesta_X_Vuelo_Precio_Unitario, Propuesta_X_Vuelo_Subtotal, Propuesta_X_Vuelo_ID_Vuelo, Propuesta_X_Vuelo_ID_Propuesta)
		SELECT DISTINCT t.Detalle_Propuesta_Vuelo_Cant_Pasajes, t.Detalle_Propuesta_Vuelo_Precio, t.Detalle_Propuesta_Vuelo_Subtotal, v.Vuelo_ID, p.Propuesta_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea al
			ON al.Aerolinea_Codigo = t.Aerolinea_Codigo
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto ap1
			ON ap1.Aeropuerto_Codigo = t.Aeropuerto_Llegada_Codigo
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto ap2
			ON ap2.Aeropuerto_Codigo = t.Aeropuerto_Salida_Codigo
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo v
			ON v.Vuelo_ID_Aerolinea = al.Aerolinea_ID
			AND v.Vuelo_Duracion = t.Vuelo_Duracion
			AND v.Vuelo_Fecha_Llegada = t.Vuelo_Fecha_Llegada
			AND v.Vuelo_Fecha_Salida = t.Vuelo_Fecha_Salida
			AND v.Vuelo_Horario_Llegada = t.Vuelo_Horario_Llegada
			AND v.Vuelo_Horario_Salida = t.Vuelo_Horario_Salida
			AND v.Vuelo_Incluye_Carry = t.Vuelo_Incluye_Carry
			AND v.Vuelo_Incluye_Valija = t.Vuelo_Incluye_Valija
			AND v.Vuelo_ID_Aeropuerto_Llegada = ap1.Aeropuerto_ID
			AND v.Vuelo_ID_Aeropuerto_Salida = ap2.Aeropuerto_ID
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta p
			ON p.Propuesta_Nro_Propuesta = t.Propuesta_Nro_Propuesta
		WHERE t.Detalle_Propuesta_Vuelo_Cant_Pasajes IS NOT NULL
		  AND t.Detalle_Propuesta_Vuelo_Precio IS NOT NULL
		  AND t.Detalle_Propuesta_Vuelo_Subtotal IS NOT NULL
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas_X_Habitacion
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Habitacion(Propuesta_X_Habitacion_Fecha_Desde, Propuesta_X_Habitacion_Fecha_Hasta, Propuesta_X_Habitacion_Cantidad_Habitaciones, Propuesta_X_Habitacion_Precio_Unitario, Propuesta_X_Habitacion_Subtotal, Propuesta_X_Habitacion_ID_Habitacion, Propuesta_X_Habitacion_ID_Propuesta)
		SELECT DISTINCT t.Detalle_Propuesta_Hospedaje_Fecha_Desde, t.Detalle_Propuesta_Hospedaje_Fecha_Hasta, t.Detalle_Propuesta_Hospedaje_Cant, t.Detalle_Propuesta_Hospedaje_Precio, t.Detalle_Propuesta_Hospedaje_Subtotal, h.Habitacion_ID, p.Propuesta_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje ho
			ON ho.Hospedaje_Nombre = t.Hospedaje_Nombre
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion h 
			ON h.Habitacion_Nombre = t.Habitacion_Nombre
			AND h.Habitacion_Descripcion = t.Habitacion_Descripcion
			AND h.Habitacion_Precio = t.Habitacion_Precio_Noche
			AND h.Habitacion_ID_Hospedaje = ho.Hospedaje_ID
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta p
			ON p.Propuesta_Nro_Propuesta = t.Propuesta_Nro_Propuesta
		WHERE t.Detalle_Propuesta_Hospedaje_Fecha_Desde IS NOT NULL
		  AND t.Detalle_Propuesta_Hospedaje_Fecha_Hasta IS NOT NULL
		  AND t.Detalle_Propuesta_Hospedaje_Cant IS NOT NULL
		  AND t.Detalle_Propuesta_Hospedaje_Precio IS NOT NULL
		  AND t.Detalle_Propuesta_Hospedaje_Subtotal IS NOT NULL
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Vuelo
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Vuelo(Venta_X_Vuelo_Cantidad_Pasajes, Venta_X_Vuelo_Precio_Unitario, Venta_X_Vuelo_Subtotal, Venta_X_Vuelo_ID_Vuelo, Venta_X_Vuelo_ID_Venta, Venta_X_Vuelo_ID_Reserva)
		SELECT DISTINCT t.Detalle_Venta_Vuelo_Cantidad_Pasajes, t.Detalle_Venta_Vuelo_Precio_Unitario, t.Detalle_Venta_Vuelo_Subtotal, v.Vuelo_ID, vt.Venta_ID, r.Reserva_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea al
			ON al.Aerolinea_Codigo = t.Aerolinea_Codigo
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto ap1
			ON ap1.Aeropuerto_Codigo = t.Aeropuerto_Llegada_Codigo
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto ap2
			ON ap2.Aeropuerto_Codigo = t.Aeropuerto_Salida_Codigo
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo v
			ON v.Vuelo_ID_Aerolinea = al.Aerolinea_ID
			AND v.Vuelo_Duracion = t.Vuelo_Duracion
			AND v.Vuelo_Fecha_Llegada = t.Vuelo_Fecha_Llegada
			AND v.Vuelo_Fecha_Salida = t.Vuelo_Fecha_Salida
			AND v.Vuelo_Horario_Llegada = t.Vuelo_Horario_Llegada
			AND v.Vuelo_Horario_Salida = t.Vuelo_Horario_Salida
			AND v.Vuelo_Incluye_Carry = t.Vuelo_Incluye_Carry
			AND v.Vuelo_Incluye_Valija = t.Vuelo_Incluye_Valija
			AND v.Vuelo_ID_Aeropuerto_Llegada = ap1.Aeropuerto_ID
			AND v.Vuelo_ID_Aeropuerto_Salida = ap2.Aeropuerto_ID
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Venta vt
			ON vt.Venta_Nro_Venta = t.Venta_Nro_Venta

		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva r
			ON r.Reserva_Cod_Reserva = t.Detalle_Venta_Vuelo_Cod_Reserva
		WHERE t.Detalle_Venta_Vuelo_Cantidad_Pasajes IS NOT NULL
		  AND t.Detalle_Venta_Vuelo_Precio_Unitario IS NOT NULL
		  AND t.Detalle_Venta_Vuelo_Subtotal IS NOT NULL
		  AND t.Detalle_Venta_Vuelo_Cod_Reserva IS NOT NULL
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Habitacion
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Habitacion(Venta_X_Habitacion_Fecha_Desde, Venta_X_Habitacion_Fecha_Hasta, Venta_X_Habitacion_Cantidad_Habitaciones, Venta_X_Habitacion_Precio_Unitario, Venta_X_Habitacion_Subtotal, Venta_X_Habitacion_ID_Habitacion, Venta_X_Habitacion_ID_Venta, Venta_X_Habitacion_ID_Reserva)
		SELECT DISTINCT t.Detalle_Venta_Hospedaje_Fecha_Desde, t.Detalle_Venta_Hospedaje_Fecha_Hasta, t.Detalle_Venta_Hospedaje_Cantidad, t.Detalle_Venta_Hospedaje_Precio_Unitario, t.Detalle_Venta_Hospedaje_Subtotal, h.Habitacion_ID, vt.Venta_ID, r.Reserva_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje ho
			ON ho.Hospedaje_Nombre = t.Hospedaje_Nombre
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion h 
			ON h.Habitacion_Nombre = t.Habitacion_Nombre
			AND h.Habitacion_Descripcion = t.Habitacion_Descripcion
			AND h.Habitacion_Precio = t.Habitacion_Precio_Noche
			AND h.Habitacion_ID_Hospedaje = ho.Hospedaje_ID
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Venta vt
			ON vt.Venta_Nro_Venta = t.Venta_Nro_Venta
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva r
			ON r.Reserva_Cod_Reserva = t.Detalle_Venta_Hospedaje_Cod_Reserva
		WHERE t.Detalle_Venta_Hospedaje_Fecha_Desde IS NOT NULL
		  AND t.Detalle_Venta_Hospedaje_Fecha_Hasta IS NOT NULL
		  AND t.Detalle_Venta_Hospedaje_Cantidad IS NOT NULL
		  AND t.Detalle_Venta_Hospedaje_Precio_Unitario IS NOT NULL
		  AND t.Detalle_Venta_Hospedaje_Subtotal IS NOT NULL
		  AND t.Detalle_Venta_Hospedaje_Cod_Reserva IS NOT NULL
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Excursion
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Excursion(Venta_X_Excursion_Fecha_Reserva, Venta_X_Excursion_Cantidad, Venta_X_Excursion_Precio_Unitario, Venta_X_Excursion_Subtotal, Venta_X_Excursion_ID_Excursion, Venta_X_Excursion_ID_Reserva, Venta_X_Excursion_ID_Venta)
		SELECT DISTINCT t.Detalle_Venta_Excursion_Fecha_Reserva, t.Detalle_Venta_Excursion_Cant, t.Detalle_Venta_Excursion_Precio_Unitario, t.Detalle_Venta_Excursion_Subtotal, e.Excursion_ID, r.Reserva_ID, vt.Venta_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion e
			ON e.Excursion_Nombre = t.Excursion_Nombre
			AND e.Excursion_Descripcion = t.Excursion_Descripcion
			AND e.Excursion_Horario = t.Excursion_Horario
			AND e.Excursion_Precio = t.Excursion_Precio
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Venta vt
			ON vt.Venta_Nro_Venta = t.Venta_Nro_Venta
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva r
			ON r.Reserva_Cod_Reserva = t.Detalle_Venta_Excursion_Cod_Reserva
		WHERE t.Detalle_Venta_Excursion_Fecha_Reserva IS NOT NULL
		  AND t.Detalle_Venta_Excursion_Cant IS NOT NULL
		  AND t.Detalle_Venta_Excursion_Precio_Unitario IS NOT NULL
		  AND t.Detalle_Venta_Excursion_Subtotal IS NOT NULL
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aspectos
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto
		SELECT DISTINCT Aspecto_Aspecto
		FROM gd_esquema.Maestra
		WHERE Aspecto_Aspecto IS NOT NULL
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Encuestas
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta(Encuesta_Codigo_Encuesta, Encuesta_Fecha_Encuesta, Encuesta_Comentarios, Encuesta_ID_Cliente, Encuesta_ID_Agente)
		SELECT DISTINCT t.Encuesta_Codigo_Encuesta, t.Encuesta_Fecha_Encuesta, t.Encuesta_Comentarios, c.Cliente_ID, a.Agente_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agente a
			ON a.Agente_DNI = t.Agente_Dni
			AND a.Agente_Nombre = t.Agente_Nombre
			AND a.Agente_Apellido = t.Agente_Apellido
			AND a.Agente_Legajo = t.Agente_Legajo
			AND a.Agente_Mail = t.Agente_Mail
			AND a.Agente_Fecha_Nac = t.Agente_Fecha_Nac
			AND a.Agente_Telefono = t.Agente_Telefono
			AND a.Agente_Nombre = t.Agente_Nombre
			AND a.Agente_Apellido = t.Agente_Apellido
			AND a.Agente_Legajo = t.Agente_Legajo
			AND a.Agente_Mail = t.Agente_Mail
			AND a.Agente_Fecha_Nac = t.Agente_Fecha_Nac
			AND a.Agente_Telefono = t.Agente_Telefono
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente c
			ON c.Cliente_DNI = t.Cliente_Dni
			AND c.Cliente_Nombre = t.Cliente_Nombre
			AND c.Cliente_Apellido = t.Cliente_Apellido
			AND c.Cliente_Telefono = t.Cliente_Tel
			AND c.Cliente_Mail = t.Cliente_Mail
			AND c.Cliente_Fecha_Nac = t.Cliente_Fecha_Nac
		WHERE t.Encuesta_Codigo_Encuesta IS NOT NULL
		  AND t.Encuesta_Fecha_Encuesta IS NOT NULL
		  AND t.Encuesta_Comentarios IS NOT NULL
		  
	END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Encuestas_X_Aspecto
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_X_Aspecto(Encuesta_X_Aspecto_Puntaje, Encuesta_X_Aspecto_ID_Encuesta, Encuesta_X_Aspecto_ID_Aspecto)
		SELECT DISTINCT t.Detalle_Encuesta_Puntaje, e.Encuesta_ID, a.Aspecto_ID
		FROM gd_esquema.Maestra t
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta e
			ON e.Encuesta_Codigo_Encuesta = t.Encuesta_Codigo_Encuesta
			AND e.Encuesta_Comentarios = t.Encuesta_Comentarios
			AND e.Encuesta_Fecha_Encuesta = t.Encuesta_Fecha_Encuesta
		JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto a
			ON a.Aspecto_Tipo = t.Aspecto_Aspecto
		WHERE t.Detalle_Encuesta_Puntaje IS NOT NULL
		  
	END
GO

--Ejecucion de Stored Procedures---------------------------

 BEGIN TRANSACTION
 BEGIN TRY
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Provincias
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Localidades
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Direcciones
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Estados
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Paises
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ciudades
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Alianzas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aerolineas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aeropuertos
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Proveedores
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Excursiones
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agencias
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agentes
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Clientes
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Solicitudes
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Solicitudes_X_Ciudad
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Reservas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Vuelos 
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Hospedajes
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Habitaciones
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Medios_Pago
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Canales_Venta
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Propuesta
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas_X_Vuelo
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Propuestas_X_Habitacion
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Vuelo
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Habitacion
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ventas_X_Excursion
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Encuestas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Aspectos
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Encuestas_X_Aspecto
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 52001, 'Error al migrar las tablas.',1;
END CATCH
IF (EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Pais)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Aeropuerto)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Agente)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud_X_Ciudad)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Reserva)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Vuelo)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Hospedaje)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Habitacion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Medio_Pago)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Propuesta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Vuelo)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta_X_Habitacion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Vuelo)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Habitacion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Excursion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_X_Aspecto)
)
   BEGIN
	PRINT 'Tablas migradas correctamente.';
	COMMIT TRANSACTION;
   END
	 ELSE
   BEGIN
    ROLLBACK TRANSACTION;
	THROW 52002, 'Hubo un error al migrar las tablas.',1;
   END
GO

