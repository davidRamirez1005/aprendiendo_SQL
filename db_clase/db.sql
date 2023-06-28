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

INSERT INTO Person (Nombre, Apellido1, Apellido2, DNI)
VALUES
    ('John', 'Doe', 'Smith', '1234567890'),
    ('Jane', 'Smith', 'Doe', '0987654321'),
    ('Michael', 'Johnson', NULL, '9876543210');

INSERT INTO coches (Matricula, Marca, Modelo, Caballos)
VALUES
    ('ABC123', 'Toyota', 'Corolla', 150),
    ('DEF456', 'Honda', 'Civic', 130),
    ('GHI789', 'Ford', 'Mustang', 300);



SELECT
  Person.id,
  Person.Nombre,
  coches.Matricula,
  coches.Marca
FROM
  coche_vs_persona
INNER JOIN
  Person ON coche_vs_persona.Persona_id = Person.id
INNER JOIN
  coches ON coche_vs_persona.Coche_Matricula = coches.Matricula;

-- Antes de la actualización
SELECT * FROM coche_vs_persona;

-- Realizar la actualización en la tabla Person
UPDATE Person
SET Nombre = 'NuevoNombre'
WHERE id = 1;

-- Actualizar los registros correspondientes en la tabla coche_vs_persona
UPDATE coche_vs_persona
SET Persona_id = (
    SELECT id
    FROM Person
    WHERE id = 1
)
WHERE Persona_id = 1;

-- Después de la actualización
SELECT * FROM coche_vs_persona;


ALTER TABLE Person
ADD CONSTRAINT UK_DNI UNIQUE (DNI);
