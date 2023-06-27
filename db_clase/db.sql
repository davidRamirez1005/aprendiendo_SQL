CREATE DATABASE prueba;
USE prueba;
CREATE TABLE Person(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(80) NOT NULL,
    Apellido1 VARCHAR(100) NOT NULL,
    Apellido2 VARCHAR(100) NULL,
    DNI VARCHAR(10) NOT NULL
);

CREATE TABLE coches(
    Matricula VARCHAR(7) NOT NULL PRIMARY KEY,
    Marca VARCHAR(45) NOT NULL,
    Modelo VARCHAR(45) NULL,
    Caballos INT(11) NOT NULL
);

CREATE TABLE coche_vs_persona(
  Coche_Matricula VARCHAR(7),
  Persona_id INT(11) 
);

ALTER TABLE coche_vs_persona
ADD CONSTRAINT Coche_Matricula
FOREIGN KEY (Coche_Matricula) REFERENCES coches (Matricula);

ALTER TABLE coche_vs_persona
ADD CONSTRAINT Persona_id
FOREIGN KEY (Persona_id) REFERENCES Person (id);