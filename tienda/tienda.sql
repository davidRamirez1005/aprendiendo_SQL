-- Creación de la tabla "Clientes"
CREATE DATABASE tienda;

CREATE TABLE Clientes (
  id_cliente INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200) NOT NULL,
  telefono VARCHAR(20) NOT NULL
);

-- Creación de la tabla "Productos"
CREATE TABLE Productos (
  id_producto INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DECIMAL(10,2) NOT NULL
);

-- Creación de la tabla "Ventas"
CREATE TABLE Ventas (
  id_venta INT NOT NULL PRIMARY KEY,
  fecha_venta DATE NOT NULL,
  id_cliente INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Creación de la tabla "DetalleVentas"
CREATE TABLE DetalleVentas (
  id_detalle INT NOT NULL PRIMARY KEY,
  id_venta INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL,
  FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
  FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Creación de la tabla "Empleados"
CREATE TABLE Empleados (
  id_empleado INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  puesto VARCHAR(50) NOT NULL
);

-- Agrega datos ficticios a las tablas

-- Insertar datos en la tabla "Clientes"
INSERT INTO Clientes (id_cliente, nombre, direccion, telefono)
VALUES
  (1, 'Juan Perez', 'Calle Principal 123', '1234567890'),
  (2, 'María López', 'Avenida Central 456', '9876543210'),
  (3, 'Pedro Rodríguez', 'Plaza Mayor 789', '5555555555');

-- Insertar datos en la tabla "Productos"
INSERT INTO Productos (id_producto, nombre, precio)
VALUES
  (1, 'Camiseta', 19.99),
  (2, 'Pantalón', 39.99),
  (3, 'Zapatos', 59.99);

-- Insertar datos en la tabla "Ventas"
INSERT INTO Ventas (id_venta, fecha_venta, id_cliente)
VALUES
  (1, '2023-01-01', 1),
  (2, '2023-02-15', 2),
  (3, '2023-03-20', 3);

-- Insertar datos en la tabla "DetalleVentas"
INSERT INTO DetalleVentas (id_detalle, id_venta, id_producto, cantidad)
VALUES
  (1, 1, 1, 2),
  (2, 1, 3, 1),
  (3, 2, 2, 3),
  (4, 3, 1, 1);

-- Insertar datos en la tabla "Empleados"
INSERT INTO Empleados (id_empleado, nombre, puesto)
VALUES
  (1, 'Ana García', 'Vendedor'),
  (2, 'Carlos Ramirez', 'Cajero'),
  (3, 'Laura Torres', 'Gerente');





-- Obtener información de ventas junto con los datos de clientes y productos
SELECT V.id_venta, V.fecha_venta, C.nombre AS nombre_cliente, P.nombre AS nombre_producto, DV.cantidad
FROM Ventas V
INNER JOIN Clientes C ON V.id_cliente = C.id_cliente
INNER JOIN DetalleVentas DV ON V.id_venta = DV.id_venta
INNER JOIN Productos P ON DV.id_producto = P.id_producto;
