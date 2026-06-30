USE GD1C2026
GO

--DROP Preventivo de Funciones------------------------------------------------------------

IF EXISTS(SELECT name FROM sys.objects WHERE name = 'getRangoEdad')
	DROP FUNCTION GANEN_LA_CUARTA_O_NO_VUELVAN.getRangoEdad

IF EXISTS(SELECT name FROM sys.objects WHERE name = 'getTemporada')
	DROP FUNCTION GANEN_LA_CUARTA_O_NO_VUELVAN.getTemporada

IF EXISTS(SELECT name FROM sys.objects WHERE name = 'getCuatrimestre')
	DROP FUNCTION GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre


--DROP Preventivo de Procedures---------------------------------------------------------------

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_estados_propuestas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_estados_propuestas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_canales_venta')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_canales_venta;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_aspectos_encuesta')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_aspectos_encuesta;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_origenes_encuesta')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_origenes_encuesta;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_tipos_servicios')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tipos_servicios;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_temporadas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_temporadas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_tiempos')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tiempos;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_rangos_etarios_clientes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_clientes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_rangos_etarios_agentes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_agentes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_agentes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_agentes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_facts_ventas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_ventas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_facts_solicitudes')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_solicitudes;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_facts_propuestas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_propuestas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_facts_solicitudes_x_propuestas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_solicitudes_x_propuestas;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'BI_migrar_facts_encuestas')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_encuestas;

GO

--DROP Preventivo de Tablas------------------------------------------------------------

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_facts_encuestas')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_facts_solicitudes_x_propuestas')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_facts_propuestas')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_facts_solicitudes')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_facts_ventas')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_aspecto_encuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_origen_encuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_agente')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_estado_propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_temporada')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_rango_etario_agentes')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_rango_etario_clientes')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_canal_venta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_tipo_servicio')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'BI_dim_tiempo')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo;


GO

--DROP Preventivo de Vistas------------------------------------------------------------

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_ticket_promedio')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ticket_promedio;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_distribucion_facturacion')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_distribucion_facturacion;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_ranking_solicitudes_temporada')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ranking_solicitudes_temporada;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_anticipacion_promedio_solicitudes')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_anticipacion_promedio_solicitudes;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_tasa_aceptacion_propuestas')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_tasa_aceptacion_propuestas;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_cotizacion_promedio_temporada')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_cotizacion_promedio_temporada;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_tiempo_promedio_respuesta')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_tiempo_promedio_respuesta;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_desvio_presupuesto')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_desvio_presupuesto;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_ranking_aspectos')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ranking_aspectos;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_ranking_aspectos_segun_origen')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ranking_aspectos_segun_origen;

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_satisfaccion_promedio_agente')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_satisfaccion_promedio_agente;
GO

IF EXISTS (SELECT name FROM sys.views WHERE name = 'BI_vw_satisfaccion_promedio_agente_segun_origen')
DROP VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_satisfaccion_promedio_agente_segun_origen;
GO


--Creación Funciones------------------------------------------------------------

CREATE FUNCTION GANEN_LA_CUARTA_O_NO_VUELVAN.getRangoEdad (@fechaNacimiento datetime2(3))
RETURNS varchar(30)
AS
BEGIN
    DECLARE @edad int;
    DECLARE @respuesta varchar(30);
    DECLARE @hoy DATE = CAST(GETDATE() AS DATE);

    
    SET @edad = DATEDIFF(YEAR, @fechaNacimiento, @hoy);
    IF (MONTH(@fechaNacimiento) > MONTH(@hoy) OR 
        (MONTH(@fechaNacimiento) = MONTH(@hoy) AND DAY(@fechaNacimiento) > DAY(@hoy)))
    BEGIN
        SET @edad = @edad - 1;
    END

   
    IF (@edad > 25 AND @edad <= 35)
    BEGIN
        SET @respuesta = '[25 - 35]';
    END
    ELSE IF (@edad > 35 AND @edad <= 50)
    BEGIN
        SET @respuesta = '[35 - 50]';
    END
    ELSE IF (@edad > 50)
    BEGIN
        SET @respuesta = '>50';
    END
    ELSE
    BEGIN
        SET @respuesta = '=<25';
    END

    RETURN @respuesta;
END
GO

CREATE FUNCTION GANEN_LA_CUARTA_O_NO_VUELVAN.getTemporada (@fecha datetime2(3))
RETURNS varchar(30)
AS
BEGIN
    DECLARE @mes int;
    DECLARE @respuesta varchar(30);

    SET @mes = DATEPART(MONTH, @fecha);

    IF (@mes BETWEEN 1 AND 3)
        SET @respuesta = 'Verano'
    ELSE IF (@mes BETWEEN 4 AND 6)
        SET @respuesta = 'Otoño'
    ELSE IF (@mes BETWEEN 7 AND 9)
        SET @respuesta = 'Invierno'
    ELSE 
        SET @respuesta = 'Primavera'

    RETURN @respuesta;
END
GO

CREATE FUNCTION GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre (@fecha datetime2)
RETURNS int
AS
BEGIN
    DECLARE @mes int;
    DECLARE @cuatrimestre int;

    SET @mes = DATEPART(MONTH, @fecha);

    IF (@mes BETWEEN 1 AND 4)
        SET @cuatrimestre = 1;
    ELSE IF (@mes BETWEEN 5 AND 8)
        SET @cuatrimestre = 2;
    ELSE 
        SET @cuatrimestre = 3;

    RETURN @cuatrimestre;
END
GO

--Creacion de tablas------------------------------------------------------------

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(
    Tiempo_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Año int,
    Cuatrimestre int,
    Mes int
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio(
    Tipo_Servicio_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Tipo_Servicio nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta(
    Canal_Venta_id BIGINT IDENTITY(1,1) PRIMARY KEY,
    Canal_Venta nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(
    Rango_Etario_Cli_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Rango_Etario nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(
    Rango_Etario_Ag_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Rango_Etario nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(
    Temporada_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Temporada nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta(
    Estado_Propuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Estado_Propuesta nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente(
    Agente_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Rango_Etario_Ag_ID BIGINT,
    FOREIGN KEY (Rango_Etario_Ag_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(Rango_Etario_Ag_ID),
    Nombre nvarchar(510),
    Apellido nvarchar(510),
    DNI nvarchar(510)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta(
    Aspecto_Encuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Aspecto_Encuesta nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta(
    Origen_Encuesta_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    Origen_Encuesta nvarchar(30)
)

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas(
    Tiempo_ID BIGINT,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Rango_Etario_cli_ID BIGINT,
    FOREIGN KEY(Rango_Etario_cli_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(Rango_Etario_cli_ID),
    Canal_Venta_ID BIGINT,
    FOREIGN KEY(Canal_Venta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta(Canal_Venta_ID),
    Tipo_Servicio_ID BIGINT,
    FOREIGN KEY(Tipo_Servicio_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio(Tipo_Servicio_ID),
    Cantidad bigint,
    Importe_Total decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Rango_Etario_Cli_ID, Canal_Venta_ID, Tipo_Servicio_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes(
    Tiempo_ID BIGINT,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Rango_Etario_Cli_ID BIGINT,
    FOREIGN KEY(Rango_Etario_Cli_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(Rango_Etario_cli_ID),
    Temporada_ID BIGINT,
    FOREIGN KEY(Temporada_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(Temporada_ID),
    Cantidad bigint,
    Anticipacion_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Rango_Etario_Cli_ID, Temporada_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas(
    Tiempo_ID BIGINT,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Tiempo_Inicio_Viaje_ID BIGINT,
    FOREIGN KEY(Tiempo_Inicio_Viaje_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Estado_Propuesta_ID BIGINT,
    FOREIGN KEY(Estado_Propuesta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta(Estado_Propuesta_ID),
    Temporada_ID BIGINT,
    FOREIGN KEY(Temporada_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(Temporada_ID),
    Cantidad bigint,
    Importe_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Tiempo_Inicio_Viaje_ID, Estado_Propuesta_ID, Temporada_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas(
    Tiempo_ID BIGINT,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Rango_Etario_Ag_ID BIGINT,
    FOREIGN KEY(Rango_Etario_Ag_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(Rango_Etario_Ag_ID),
    Cantidad bigint,
    Tiempo_Promedio_Respuesta decimal(18,2),
    Desvio_Presupuesto_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Rango_Etario_AG_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas(
    Tiempo_ID BIGINT,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Aspecto_Encuesta_ID BIGINT,
    FOREIGN KEY(Aspecto_Encuesta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta(Aspecto_Encuesta_ID),
    Origen_Encuesta_ID BIGINT,
    FOREIGN KEY(Origen_Encuesta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta(Origen_Encuesta_ID),
    Agente_ID BIGINT,
    FOREIGN KEY(Agente_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente(Agente_ID),
    Cantidad_Respuestas bigint,
    Puntuacion_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Origen_Encuesta_ID, Aspecto_Encuesta_ID, Agente_ID)
);


GO

--Creacion de Vistas------------------------------------------------------------

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ticket_promedio
AS
SELECT
    t.Año,
    t.Mes,
    re.Rango_Etario AS Rango_Etario_Cliente,
    cv.Canal_Venta,
    CAST(SUM(fv.Importe_Total) / NULLIF(SUM(fv.Cantidad), 0) AS decimal(18,2)) AS Ticket_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas fv
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fv.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes re
    ON re.Rango_Etario_Cli_ID = fv.Rango_Etario_Cli_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta cv
    ON cv.Canal_Venta_ID = fv.Canal_Venta_ID
GROUP BY
    t.Año,
    t.Mes,
    re.Rango_Etario,
    cv.Canal_Venta;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_distribucion_facturacion
AS
SELECT
    t.Año,
    t.Cuatrimestre,
    ts.Tipo_Servicio,
    CAST(SUM(fv.Cantidad) * 100.0 / NULLIF(SUM(SUM(fv.Cantidad)) OVER (PARTITION BY t.Año, t.Cuatrimestre), 0) AS decimal(18,2)) AS Porcentaje_Facturacion
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas fv
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fv.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio ts
    ON ts.Tipo_Servicio_ID = fv.Tipo_Servicio_ID
GROUP BY
    t.Año,
    t.Cuatrimestre,
    ts.Tipo_Servicio;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ranking_solicitudes_temporada
AS
SELECT
    t.Año,
    temp.Temporada,
    re.Rango_Etario AS Rango_Etario_Cliente,
    SUM(fs.Cantidad) AS Cantidad_Solicitudes
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes fs
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fs.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada temp
    ON temp.Temporada_ID = fs.Temporada_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes re
    ON re.Rango_Etario_Cli_ID = fs.Rango_Etario_Cli_ID
GROUP BY
    t.Año,
    temp.Temporada,
    re.Rango_Etario;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_anticipacion_promedio_solicitudes
AS
SELECT
    t.Año,
    t.Cuatrimestre,
    re.Rango_Etario AS Rango_Etario_Cliente,
    CAST(
        SUM(fs.Anticipacion_Promedio * fs.Cantidad) / NULLIF(SUM(fs.Cantidad), 0)
        AS decimal(18,2)
    ) AS Anticipacion_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes fs
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fs.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes re
    ON re.Rango_Etario_Cli_ID = fs.Rango_Etario_Cli_ID
GROUP BY
    t.Año,
    t.Cuatrimestre,
    re.Rango_Etario;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_tasa_aceptacion_propuestas
AS
SELECT
    t.Año,
    t.Cuatrimestre,
    CAST(
        SUM(CASE WHEN ep.Estado_Propuesta = 'Aceptada' THEN fp.Cantidad ELSE 0 END) * 100.0
        / NULLIF(SUM(fp.Cantidad), 0)
        AS decimal(18,2)
    ) AS Tasa_Aceptacion
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas fp
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fp.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta ep
    ON ep.Estado_Propuesta_ID = fp.Estado_Propuesta_ID
GROUP BY
    t.Año,
    t.Cuatrimestre;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_cotizacion_promedio_temporada
AS
SELECT
    t_inicio.Año,
    temp.Temporada,
    CAST(
        SUM(fp.Importe_Promedio * fp.Cantidad) / NULLIF(SUM(fp.Cantidad), 0)
        AS decimal(18,2)
    ) AS Cotizacion_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas fp
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t_inicio
    ON t_inicio.Tiempo_ID = fp.Tiempo_Inicio_Viaje_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada temp
    ON temp.Temporada_ID = fp.Temporada_ID
GROUP BY
    t_inicio.Año,
    temp.Temporada;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_tiempo_promedio_respuesta
AS
SELECT
    t.Año,
    t.Mes,
    rea.Rango_Etario AS Rango_Etario_Agente,
    CAST(SUM(fsp.Tiempo_Promedio_Respuesta * fsp.Cantidad) / NULLIF(SUM(fsp.Cantidad), 0) AS decimal(18,2)) AS Tiempo_Promedio_Respuesta
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas fsp
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fsp.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes rea
    ON rea.Rango_Etario_Ag_ID = fsp.Rango_Etario_Ag_ID
GROUP BY
    t.Año,
    t.Mes,
    rea.Rango_Etario;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_desvio_presupuesto
AS
SELECT
    CAST(SUM(fsp.Desvio_Presupuesto_Promedio * fsp.Cantidad) / NULLIF(SUM(fsp.Cantidad), 0) AS decimal(18,2)) AS Desvio_Presupuesto_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas fsp;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ranking_aspectos
AS
SELECT
    t.Año,
    t.Cuatrimestre,
    ae.Aspecto_Encuesta,
    CAST(SUM(fe.Puntuacion_Promedio * fe.Cantidad_Respuestas) / NULLIF(SUM(fe.Cantidad_Respuestas), 0) AS decimal(18,2)) AS Puntuacion_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas fe
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fe.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta ae
    ON ae.Aspecto_Encuesta_ID = fe.Aspecto_Encuesta_ID
GROUP BY
    t.Año,
    t.Cuatrimestre,
    ae.Aspecto_Encuesta;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_ranking_aspectos_segun_origen
AS
SELECT
    t.Año,
    t.Cuatrimestre,
    ae.Aspecto_Encuesta,
    oe.Origen_Encuesta,
    CAST(SUM(fe.Puntuacion_Promedio * fe.Cantidad_Respuestas) / NULLIF(SUM(fe.Cantidad_Respuestas), 0) AS decimal(18,2)) AS Puntuacion_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas fe
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fe.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta ae
    ON ae.Aspecto_Encuesta_ID = fe.Aspecto_Encuesta_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta oe
    ON oe.Origen_Encuesta_ID = fe.Origen_Encuesta_ID
GROUP BY
    t.Año,
    t.Cuatrimestre,
    ae.Aspecto_Encuesta,
    oe.Origen_Encuesta;
GO

CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_satisfaccion_promedio_agente
AS
SELECT
    t.Año,
    t.Mes,
    re.Rango_Etario AS Rango_Etario_Agente,
    CAST(SUM(fe.Puntuacion_Promedio * fe.Cantidad_Respuestas) / NULLIF(SUM(fe.Cantidad_Respuestas), 0) AS decimal(18,2)) AS Satisfaccion_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas fe
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fe.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente ag
    ON ag.Agente_ID = fe.Agente_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes re
    ON re.Rango_Etario_Ag_ID = ag.Rango_Etario_Ag_ID
GROUP BY
    t.Año,
    t.Mes,
    re.Rango_Etario;
GO


CREATE VIEW GANEN_LA_CUARTA_O_NO_VUELVAN.BI_vw_satisfaccion_promedio_agente_segun_origen
AS
SELECT
    t.Año,
    t.Mes,
    oe.Origen_Encuesta,
    re.Rango_Etario AS Rango_Etario_Agente,
    CAST(SUM(fe.Puntuacion_Promedio * fe.Cantidad_Respuestas) / NULLIF(SUM(fe.Cantidad_Respuestas), 0) AS decimal(18,2)) AS Satisfaccion_Promedio
FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas fe
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta oe
    ON oe.Origen_Encuesta_ID = fe.Origen_Encuesta_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
    ON t.Tiempo_ID = fe.Tiempo_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente ag
    ON ag.Agente_ID = fe.Agente_ID
JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes re
    ON re.Rango_Etario_Ag_ID = ag.Rango_Etario_Ag_ID
GROUP BY
    t.Año,
    t.Mes,
    re.Rango_Etario,
    oe.Origen_Encuesta;
GO

--Creacion de Stored Procedures para Migracion----------------------------------

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_estados_propuestas
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta(Estado_Propuesta)
	SELECT e.Estado_Propuesta_Tipo
	FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta e
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_canales_venta
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta(Canal_Venta)
	SELECT c.Canal_Venta_Nombre
	FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta c
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_aspectos_encuesta
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta
	SELECT a.Aspecto_Tipo
	FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto a
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_origenes_encuesta
AS
BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta(Origen_Encuesta)
    VALUES
    ('Sin Clasificar'),
    ('Venta'),
    ('Propuesta');
END
    GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tipos_servicios
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio (Tipo_Servicio)
	VALUES 
		('Venta Directa'),
		('Propuesta a Medida');
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_temporadas
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(Temporada)
	VALUES 
		('Verano'),
        ('Otoño'),
        ('Invierno'),
		('Primavera');
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tiempos
AS
BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo (Año, Cuatrimestre, Mes)
    SELECT DISTINCT
        YEAR(FechasUnificadas.Fecha) AS Año,
        GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(FechasUnificadas.Fecha),
        MONTH(FechasUnificadas.Fecha) AS Mes
    FROM (
        SELECT Solicitud_Fecha_Solicitud as Fecha FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud
        UNION
        SELECT Venta_Fecha_Venta FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta
        UNION
        SELECT Propuesta_Fecha_Emision FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta
        UNION
        SELECT Propuesta_Fecha_Desde FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta
    ) AS FechasUnificadas
    WHERE NOT EXISTS (
        SELECT 1
        FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo b
        WHERE 
            b.Año = YEAR(FechasUnificadas.Fecha) AND 
            b.Mes = MONTH(FechasUnificadas.Fecha) AND 
            b.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(FechasUnificadas.Fecha)
    );
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_clientes
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(Rango_Etario)
	VALUES 
		('=<25'),
		('[25 - 35]'),
		('[35 - 50]'),
		('>50');
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_agentes
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(Rango_Etario)
	VALUES 
		('[25 - 35]'),
		('[35 - 50]'),
		('>50');
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_agentes
AS
BEGIN
	INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente(Nombre, Apellido, DNI, Rango_Etario_Ag_ID)
	SELECT a.Agente_Nombre, a.Agente_Apellido, a.Agente_DNI, re.Rango_Etario_Ag_ID
	FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Agente a
	join GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes re on re.Rango_Etario = GANEN_LA_CUARTA_O_NO_VUELVAN.getRangoEdad(a.Agente_Fecha_Nac) 
END
	GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_ventas
AS
BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas(Tiempo_ID, Rango_Etario_Cli_ID, Canal_Venta_ID, Tipo_Servicio_ID, Cantidad, Importe_Total)
    SELECT t.Tiempo_ID, re.Rango_Etario_Cli_ID, dcv.Canal_Venta_ID, dts.Tipo_Servicio_ID, COUNT(v.Venta_ID) AS Cantidad, SUM(ISNULL(v.Venta_Importe_Total, 0)) AS Importe_Total
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta v
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente c
        ON c.Cliente_ID = v.Venta_ID_Cliente
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Canal_Venta cv
        ON cv.Canal_Venta_ID = v.Venta_ID_Canal_Venta
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
        ON t.Año = YEAR(v.Venta_Fecha_Venta)
        AND t.Mes = MONTH(v.Venta_Fecha_Venta)
        AND t.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(v.Venta_Fecha_Venta)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes re
        ON re.Rango_Etario = GANEN_LA_CUARTA_O_NO_VUELVAN.getRangoEdad(c.Cliente_Fecha_Nac)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta dcv
        ON dcv.Canal_Venta = cv.Canal_Venta_Nombre
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio dts
        ON dts.Tipo_Servicio =
            CASE 
                WHEN EXISTS (
                    SELECT 1
                    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta_X_Propuesta vxp
                    WHERE vxp.Venta_X_Propuesta_ID_Venta = v.Venta_ID
                )
                THEN 'Propuesta a Medida'
                ELSE 'Venta Directa'
            END
    WHERE v.Venta_Fecha_Venta IS NOT NULL
    GROUP BY
        t.Tiempo_ID,
        re.Rango_Etario_Cli_ID,
        dcv.Canal_Venta_ID,
        dts.Tipo_Servicio_ID;
END
GO
	
CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_solicitudes
AS
BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes(Tiempo_ID, Rango_Etario_Cli_ID, Temporada_ID, Cantidad, Anticipacion_Promedio)
    SELECT t.Tiempo_ID, re.Rango_Etario_Cli_ID, dt.Temporada_ID, COUNT_BIG(s.Solicitud_ID) AS Cantidad, AVG(CAST(DATEDIFF(DAY, s.Solicitud_Fecha_Solicitud, s.Solicitud_Fecha_Inicio_Tentativa) AS decimal(18,2))) AS Anticipacion_Promedio
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud s
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Cliente c
        ON c.Cliente_ID = s.Solicitud_ID_Cliente
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
        ON t.Año = YEAR(s.Solicitud_Fecha_Solicitud)
        AND t.Mes = MONTH(s.Solicitud_Fecha_Solicitud)
        AND t.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(s.Solicitud_Fecha_Solicitud)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes re
        ON re.Rango_Etario = GANEN_LA_CUARTA_O_NO_VUELVAN.getRangoEdad(c.Cliente_Fecha_Nac)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada dt
        ON dt.Temporada = GANEN_LA_CUARTA_O_NO_VUELVAN.getTemporada(s.Solicitud_Fecha_Solicitud)
    WHERE s.Solicitud_Fecha_Solicitud IS NOT NULL
    GROUP BY
        t.Tiempo_ID,
        re.Rango_Etario_Cli_ID,
        dt.Temporada_ID;
END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_propuestas
AS
BEGIN

    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas(Tiempo_ID, Tiempo_Inicio_Viaje_ID, Estado_Propuesta_ID, Temporada_ID, Cantidad, Importe_Promedio)
    SELECT te.Tiempo_ID AS Tiempo_ID, ti.Tiempo_ID AS Tiempo_Inicio_Viaje_ID, dep.Estado_Propuesta_ID, dt.Temporada_ID, COUNT_BIG(p.Propuesta_ID) AS Cantidad, AVG(CAST(p.Propuesta_Importe_Total AS decimal(18,2))) AS Importe_Promedio
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta p
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta ep
        ON ep.Estado_Propuesta_ID = p.Propuesta_ID_Estado
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta dep
        ON dep.Estado_Propuesta = ep.Estado_Propuesta_Tipo
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo te
        ON te.Año = YEAR(p.Propuesta_Fecha_Emision)
        AND te.Mes = MONTH(p.Propuesta_Fecha_Emision)
        AND te.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(p.Propuesta_Fecha_Emision)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo ti
        ON ti.Año = YEAR(p.Propuesta_Fecha_Desde)
        AND ti.Mes = MONTH(p.Propuesta_Fecha_Desde)
        AND ti.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(p.Propuesta_Fecha_Desde)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada dt
        ON dt.Temporada = GANEN_LA_CUARTA_O_NO_VUELVAN.getTemporada(p.Propuesta_Fecha_Desde)
    WHERE 
        p.Propuesta_Fecha_Emision IS NOT NULL
        AND p.Propuesta_Fecha_Desde IS NOT NULL
    GROUP BY
        te.Tiempo_ID,
        ti.Tiempo_ID,
        dep.Estado_Propuesta_ID,
        dt.Temporada_ID;
END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_solicitudes_x_propuestas
AS
BEGIN

    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas(Tiempo_ID, Rango_Etario_Ag_ID, Cantidad, Tiempo_Promedio_Respuesta,Desvio_Presupuesto_Promedio)
    SELECT t.Tiempo_ID, re.Rango_Etario_Ag_ID, COUNT_BIG(p.Propuesta_ID) AS Cantidad, AVG(CAST(DATEDIFF(DAY, s.Solicitud_Fecha_Solicitud, p.Propuesta_Fecha_Emision) AS decimal(18,2))) AS Tiempo_Promedio_Respuesta, AVG(abs(CAST(p.Propuesta_Importe_Total - s.Solicitud_Presupuesto_Estimado AS decimal(18,2)))) AS Desvio_Presupuesto_Promedio
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta p
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Solicitud s
        ON s.Solicitud_ID = p.Propuesta_ID_Solicitud
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agente a
        ON a.Agente_ID = p.Propuesta_ID_Agente
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
        ON t.Año = YEAR(s.Solicitud_Fecha_Solicitud)
        AND t.Mes = MONTH(s.Solicitud_Fecha_Solicitud)
        AND t.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(s.Solicitud_Fecha_Solicitud)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes re
        ON re.Rango_Etario = GANEN_LA_CUARTA_O_NO_VUELVAN.getRangoEdad(a.Agente_Fecha_Nac)
    WHERE
        s.Solicitud_Fecha_Solicitud IS NOT NULL
        AND p.Propuesta_Fecha_Emision IS NOT NULL
    GROUP BY
        t.Tiempo_ID,
        re.Rango_Etario_Ag_ID;
END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_encuestas
AS
BEGIN
    INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas(Tiempo_ID, Aspecto_Encuesta_ID, Origen_Encuesta_ID, Agente_ID, Cantidad_Respuestas, Puntuacion_Promedio)
    SELECT t.Tiempo_ID, 
           dae.Aspecto_Encuesta_ID, 
           doe.Origen_Encuesta_ID,
           da.Agente_ID, COUNT_BIG(exa.Encuesta_X_Aspecto_ID) AS Cantidad_Respuestas, AVG(CAST(exa.Encuesta_X_Aspecto_Puntaje AS decimal(18,2))) AS Puntuacion_Promedio
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta e
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_X_Aspecto exa
        ON exa.Encuesta_X_Aspecto_ID_Encuesta = e.Encuesta_ID
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Aspecto a
        ON a.Aspecto_ID = exa.Encuesta_X_Aspecto_ID_Aspecto
    LEFT JOIN Encuesta_Venta ev
        ON ev.Encuesta_Venta_ID_Encuesta = e.Encuesta_ID
    LEFT JOIN Encuesta_Propuesta ep
        ON ep.Encuesta_Propuesta_ID_Encuesta = e.Encuesta_ID
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.Agente ag
        ON ag.Agente_ID = e.Encuesta_ID_Agente
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo t
        ON t.Año = YEAR(e.Encuesta_Fecha_Encuesta)
        AND t.Mes = MONTH(e.Encuesta_Fecha_Encuesta)
        AND t.Cuatrimestre = GANEN_LA_CUARTA_O_NO_VUELVAN.getCuatrimestre(e.Encuesta_Fecha_Encuesta)
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta dae
        ON dae.Aspecto_Encuesta = a.Aspecto_Tipo
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_origen_encuesta doe
        ON doe.Origen_Encuesta = 
            CASE
            WHEN ev.Encuesta_Venta_ID_Encuesta IS NOT NULL THEN 'Venta'
            WHEN ep.Encuesta_Propuesta_ID_Encuesta IS NOT NULL THEN 'Propuesta'
            ELSE 'Sin Clasificar'
            END
    JOIN GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente da
        ON da.DNI = ag.Agente_DNI
    WHERE e.Encuesta_Fecha_Encuesta IS NOT NULL
    GROUP BY
        t.Tiempo_ID,
        dae.Aspecto_Encuesta_ID,
        doe.Origen_Encuesta_ID,
        da.Agente_ID;
END
GO

--Ejecucion de Stored Procedures---------------------------
DECLARE @Operacion VARCHAR(100) = 'INICIO';

BEGIN TRANSACTION
BEGIN TRY
    SET @Operacion = 'BI_migrar_estados_propuestas';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_estados_propuestas;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_canales_venta';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_canales_venta;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_aspectos_encuesta';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_aspectos_encuesta;
    PRINT @Operacion + ' corrio bien.';

        SET @Operacion = 'BI_migrar_origenes_encuesta';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_origenes_encuesta;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_tipos_servicios';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tipos_servicios;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_temporadas';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_temporadas;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_tiempos';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tiempos;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_rangos_etarios_clientes';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_clientes;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_rangos_etarios_agentes';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_agentes;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_agentes';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_agentes;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_facts_ventas';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_ventas;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_facts_solicitudes';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_solicitudes;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_facts_propuestas';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_propuestas;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_facts_solicitudes_x_propuestas';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_solicitudes_x_propuestas;
    PRINT @Operacion + ' corrio bien.';

    SET @Operacion = 'BI_migrar_facts_encuestas';
    EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_facts_encuestas;
    PRINT @Operacion + ' corrio bien.';
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    
    PRINT '========================================';
    PRINT 'ERROR AL MIGRAR: ' + @Operacion;
    PRINT 'MOTIVO: ' + ERROR_MESSAGE();
    PRINT '========================================';
    
    THROW 52001, 'Error al migrar las tablas. Revisa los logs arriba.', 1;
END CATCH

IF (EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas))
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