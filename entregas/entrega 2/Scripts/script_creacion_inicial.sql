USE GD1C2026
GO

--Drop Preventivo de Procedures OLTP---------------------------------------

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_provincias')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Provincias;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Localidades')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Localidades;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Direcciones')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Direcciones;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Estados')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Estados;

--DROP Preventivo de Tablas OLTP------------------------------------------------------

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Direccion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Localidad')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Provincia')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Estado_Propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta;

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
	FOREIGN KEY (Localidad_ID_Provincia) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia(Provincia_ID),
);

CREATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion (
	Direccion_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
	Direccion NVARCHAR(510) not null,
	Direccion_ID_Localidad BIGINT,
	FOREIGN KEY (Direccion_ID_Localidad) REFERENCES GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad(Localidad_ID),
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

--Ejecucion de Stored Procedures---------------------------

 BEGIN TRANSACTION
 BEGIN TRY
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Provincias
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Localidades
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Direcciones
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Estados
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 52001, 'Error al migrar las tablas.',1;
END CATCH
IF (EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta)
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