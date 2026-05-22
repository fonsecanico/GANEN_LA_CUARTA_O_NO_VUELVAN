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

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Proveedores')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Proveedores;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Excursiones')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Excursiones;

IF EXISTS (SELECT name FROM sys.procedures WHERE name = 'migrar_Agencias')
DROP PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agencias;

--DROP Preventivo de Tablas OLTP------------------------------------------------------

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Agencia')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Direccion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Direccion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Localidad')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Localidad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Provincia')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Provincia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Estado_Propuesta')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Estado_Propuesta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Ciudad')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Aerolinea')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Aerolinea;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Pais')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Pais;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Alianza')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Alianza;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Excursion')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Proveedor')
DROP TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor;

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
		  WHERE m2.Hospedaje_Pais COLLATE Latin1_General_CI_AI
			  = m.Aerolinea_Pais COLLATE Latin1_General_CI_AI
	  );
  END
GO

CREATE PROCEDURE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Ciudades
 AS
	BEGIN
		INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Ciudad(Ciudad_Nombre, Ciudad_ID_Pais)
		SELECT DISTINCT m.Hospedaje_Ciudad, p.Pais_ID --Todas las ciudades estan en Hospedaje_Pais
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
			ON p.Pais_Nombre COLLATE Latin1_General_CI_AI = t.Aerolinea_Pais COLLATE Latin1_General_CI_AI
		WHERE t.Aerolinea_Alianza IS NOT NULL 
			AND t.Aerolinea_Pais IS NOT NULL
			AND t.Aerolinea_Nombre IS NOT NULL
			AND t.Aerolinea_Codigo IS NOT NULL
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
		WHERE t.Proveedor_Nombre IS NOT NULL 
			AND t.Proveedor_Mail IS NOT NULL
			AND t.Proveedor_Telefono IS NOT NULL
			AND t.Excursion_Nombre IS NOT NULL
			AND t.Excursion_Duracion IS NOT NULL
			AND t.Excursion_Descripcion IS NOT NULL
			AND t.Excursion_Horario IS NOT NULL
			AND t. Excursion_Precio IS NOT NULL
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
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Proveedores
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Excursiones
	EXECUTE GANEN_LA_CUARTA_O_NO_VUELVAN.migrar_Agencias
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
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Proveedor)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Excursion)
AND EXISTS (SELECT 1 FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Agencia)
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