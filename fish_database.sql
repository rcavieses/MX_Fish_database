PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE VMS (
            Nombre TEXT,
            RNP TEXT,
            Fecha TEXT,
            Latitud REAL,
            Longitud REAL,
            Velocidad REAL,
            Rumbo REAL
        );
COMMIT;
