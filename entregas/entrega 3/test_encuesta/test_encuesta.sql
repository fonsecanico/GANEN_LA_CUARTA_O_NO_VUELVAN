TRUNCATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Venta;
TRUNCATE TABLE GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Propuesta;

BEGIN TRANSACTION;

INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Venta (
    Encuesta_Venta_ID_Encuesta,
    Encuesta_Venta_ID_Venta
)
SELECT
    eo.Encuesta_ID,
    (SELECT TOP 1 Venta_ID
     FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Venta
     ORDER BY Venta_ID)
FROM (
    SELECT
        Encuesta_ID,
        ROW_NUMBER() OVER (ORDER BY Encuesta_ID) AS rn,
        COUNT(*) OVER () AS total
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta
) eo
WHERE eo.rn <= eo.total / 2;


INSERT INTO GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta_Propuesta (
    Encuesta_Propuesta_ID_Encuesta,
    Encuesta_Propuesta_ID_Propuesta
)
SELECT
    eo.Encuesta_ID,
    (SELECT TOP 1 Propuesta_ID
     FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Propuesta
     ORDER BY Propuesta_ID)
FROM (
    SELECT
        Encuesta_ID,
        ROW_NUMBER() OVER (ORDER BY Encuesta_ID) AS rn,
        COUNT(*) OVER () AS total
    FROM GANEN_LA_CUARTA_O_NO_VUELVAN.Encuesta
) eo
WHERE eo.rn > eo.total / 2;

COMMIT;