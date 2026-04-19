# <center>Gestión de Datos</center>
## <center>FRBA - Gestión de Viajes</center>
### <center>1° Cuatrimestre 2026 </center>
---
## _<u>Integrantes</u>_
|Nombre|Legajo|Usuario|
| ------------- | ------------- | ------------- |
| Sommaruga, Santino|215.577-1|santinosommaruga|
| Rodríguez, Manuel|208.132-5|ManuRodri01|
| Pampin, Felipe|213.966-2|FeliPampin|
| Fonseca Giudici, Nicolás|155.837-7|fonsecanico|
---

## _<u>Software requerido</u>_
<li>SQL Server 2022</li>
<li>SQL Server Management Studio [cualquiera]</li>

---
## _<u>Setup</u>_
<ol>
<li> <u>Crear la base de datos</u> con nombre <b>GD1C2026</b></li>

```sql
 CREATE DATABASE [GD1C2026];
 ```
<li><u>Modificar el archivo</u> <b>EjecutarScriptTablaMaestra.bat</b> cambiando SERVIDOR\INSTANCIA por el servidor y la instancia propias</li><br>

>Ejemplo: localhost\MSSQLSERVER2022

<li><u>Extraer el archivo</u> <b>gd_esquema.Maestra.Table.rar</b></li>
<li><u>Ejecutar script</u> <b>EjecutarScriptTablaMaestra.bat</b> y esperar a que termine. (duración aproximada 40mins)</li>
<li><u>Crear el esquema </u><b>GANEN_LA_CUARTA_O_NO_VUELVAN</b></li>

```sql
 CREATE SCHEMA GANEN_LA_CUARTA_O_NO_VUELVAN;
 ```
<li>Listos para trabajar</li>
</ol>

---

## _<u>Setup alternativo</u>_

Si por algún motivo no funcionan los pasos anteriores, antes del paso 4 realizar:

<li><ul>En Windows:</ul></li>
Con PowerShell, ejecutar las siguientes líneas:

>Get-Content gd_esquema.Maestra.Table.sql | Out-File parsed_dump.sql -Encoding utf8

>(Get-Content parsed_dump.sql) | ForEach-Object { $_ -replace "\r", "" } | Set-Content parsed_dump.sql

Luego, en el bat reemplazar la línea de <b>gd_esquema.Maestra.Table</b> por:
> sqlcmd -S SERVIDOR\INSTANCIA -d GD1C2026 -i parsed_dump.sql -a 8192 -b -o resultado_output.txt

<li><ul>En Linux:</ul></li>

Crear la db, esquema y tabla previamente, luego parsear:

> iconv -f UTF-16LE -t UTF-8 "gd_esquema.Maestra.Table.sql" | tr -d '\r' | sed '1s/^\xef\xbb\xbf//' > parsed_dump.sql

Ponerlo en un contenedor:
> docker cp parsed_dump.sql bases-de-datos:/tmp/parsed_dump.sql

Cargarlo:
>docker exec -it bases-de-datos /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P 'adminPassw0rd' -d GD1C2026 -i /tmp/parsed_dump.sql -a 8192 -x -C -b