CREATE DATABASE IF NOT EXISTS econsulta_db;
CREATE DATABASE IF NOT EXISTS econsulta_archivos_db;
INSERT INTO econsulta_db.roles (id, nombre) 
VALUES (1, 'ROLE_ADMIN');
INSERT INTO econsulta_db.roles (id, nombre) 
VALUES (2, 'ROLE_USER');