-- Crear la base de datos
CREATE DATABASE escuela;
USE escuela;

-- Crear la tabla de Alumnos
CREATE TABLE Alumnos (
  id_alumno INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  edad INT,
  direccion VARCHAR(200)
);

-- Crear la tabla de Materias
CREATE TABLE Materias (
  id_materia INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(200)
);

-- Crear la tabla de Profesores
CREATE TABLE Profesores (
  id_profesor INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  especialidad VARCHAR(100)
);

-- Crear la tabla de Matriculas
CREATE TABLE Matriculas (
  id_matricula INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT,
  id_materia INT,
  id_profesor INT,
  FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
  FOREIGN KEY (id_materia) REFERENCES Materias(id_materia),
  FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor)
);

-- Crear la tabla de Cargos
CREATE TABLE Cargos (
  id_cargo INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(200)
);

-- Crear la tabla de Rutas de Aprendizaje
CREATE TABLE RutasAprendizaje (
  id_ruta INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT,
  id_materia INT,
  id_cargo INT,
  FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
  FOREIGN KEY (id_materia) REFERENCES Materias(id_materia),
  FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo)
);




-- Obtener información de alumnos junto con los datos de las materias y los profesores
SELECT A.id_alumno, A.nombre AS nombre_alumno, M.nombre AS nombre_materia, P.nombre AS nombre_profesor
FROM Alumnos A
INNER JOIN Matriculas MTR ON A.id_alumno = MTR.id_alumno
INNER JOIN Materias M ON MTR.id_materia = M.id_materia
INNER JOIN Profesores P ON MTR.id_profesor = P.id_profesor;
