USE GD1C2025
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
    Tiempo_ID int IDENTITY PRIMARY KEY,
    Año int,
    Cuatrimestre int,
    Mes int
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio(
    Tipo_Servicio_ID int IDENTITY PRIMARY KEY,
    Tipo_Servicio nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta(
    Canal_Venta_id int IDENTITY PRIMARY KEY,
    Canal_Venta nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(
    Rango_Etario_Cli_ID int IDENTITY PRIMARY KEY,
    Rango_Etario nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(
    Rango_Etario_Ag_ID int IDENTITY PRIMARY KEY,
    Rango_Etario nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(
    Temporada_ID int IDENTITY PRIMARY KEY,
    Temporada nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta(
    Estado_Propuesta_ID int IDENTITY PRIMARY KEY,
    Estado_Propuesta nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente(
    Agente_ID int IDENTITY PRIMARY KEY,
    Rango_Etario_Ag_ID int,
    FOREIGN KEY (Rango_Etario_Ag_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(Rango_Etario_Ag_ID),
    Nombre nvarchar(510),
    Apellido nvarchar(510),
    DNI nvarchar(510)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta(
    Aspecto_Encuesta_ID int IDENTITY PRIMARY KEY,
    Aspecto_Encuesta nvarchar(30)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_ventas(
    Tiempo_ID int,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Rango_Etario_cli_ID int,
    FOREIGN KEY(Rango_Etario_cli_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(Rango_Etario_cli_ID),
    Canal_Venta_ID int,
    FOREIGN KEY(Canal_Venta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_canal_venta(Canal_Venta_ID),
    Tipo_Servicio_ID int,
    FOREIGN KEY(Tipo_Servicio_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tipo_servicio(Tipo_Servicio_ID),
    Cantidad bigint,
    Importe_Total decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Rango_Etario_Cli_ID, Canal_Venta_ID, Tipo_Servicio_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes(
    Tiempo_ID int,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Rango_Etario_Cli_ID int,
    FOREIGN KEY(Rango_Etario_Cli_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_clientes(Rango_Etario_cli_ID),
    Temporada_ID int,
    FOREIGN KEY(Temporada_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(Temporada_ID),
    Cantidad bigint,
    Anticipacion_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Rango_Etario_Cli_ID, Temporada_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_propuestas(
    Tiempo_ID int,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Tiempo_Inicio_Viaje_ID int,
    FOREIGN KEY(Tiempo_Inicio_Viaje_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Estado_Propuesta_ID int,
    FOREIGN KEY(Estado_Propuesta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_estado_propuesta(Estado_Propuesta_ID),
    Temporada_ID int,
    FOREIGN KEY(Temporada_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_temporada(Temporada_ID),
    Cantidad bigint,
    Importe_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Tiempo_Inicio_Viaje_ID, Estado_Propuesta_ID, Temporada_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_solicitudes_x_propuestas(
    Tiempo_ID int,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Rango_Etario_Ag_ID int,
    FOREIGN KEY(Rango_Etario_Ag_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_rango_etario_agentes(Rango_Etario_Ag_ID),
    Cantidad bigint,
    Tiempo_Promedio_Respuesta decimal(18,2),
    Desvio_Presupuesto_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Rango_Etario_AG_ID)
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_facts_encuestas(
    Tiempo_ID int,
    FOREIGN KEY(Tiempo_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_tiempo(Tiempo_ID),
    Aspecto_Encuesta_ID int,
    FOREIGN KEY(Aspecto_Encuesta_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_aspecto_encuesta(Aspecto_Encuesta_ID),
    Agente_ID int,
    FOREIGN KEY(Agente_ID) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.BI_dim_agente(Agente_ID),
    Cantidad_Respuestas bigint,
    Puntuacion_Promedio decimal(18,2),
    PRIMARY KEY(Tiempo_ID, Aspecto_Encuesta_ID, Cantidad_Respuestas)
);


GO

--Creacion de Vistas------------------------------------------------------------


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
	

--Ejecucion de Stored Procedures---------------------------

 BEGIN TRANSACTION
 BEGIN TRY
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_estados_propuestas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_canales_venta
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_aspectos_encuesta
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tipos_servicios
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_temporadas
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_tiempos
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_clientes
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_rangos_etarios_agentes
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.BI_migrar_agentes
	
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 52001, 'Error al migrar las tablas.',1;
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
