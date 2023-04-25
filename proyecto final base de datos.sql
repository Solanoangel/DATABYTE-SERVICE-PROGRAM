create table cliente(
Id int primary key,
Nombre varchar(16),
Apellido  varchar(64),
Telefono char(12),
Direnccion varchar(64),
IdEmpresa int
)INSERT INTO cliente(id, nombre, apellido, telefono, Direnccion,IdEmpresa)
VALUES
  (1, 'Juan', 'Perez', '1234567890', 'Calle 123',1),
  (2, 'Maria', 'Gomez', '0987654321', 'Avenida 456',2),
  (3, 'Pedro', 'Rodriguez', '555444333', 'Boulevard 789',3),
  (4, 'Ana', 'Martinez', '777666555', 'Calle 456',1),
  (5, 'Carlos', 'Lopez', '111222333', 'Avenida 789',3)
  (6, 'Laura', 'Sanchez', '333444555', 'Calle 789',2),
  (7, 'David', 'Garcia', '999888777', 'Avenida 456',1),
  (8, 'Julia', 'Fernandez', '111333555', 'Boulevard 789',1),
  (9, 'Miguel', 'Hernandez', '222444666', 'Calle 456',3),
  (10, 'Lucia', 'Torres', '777888999', 'Avenida 789',2);

create table empresa(
Id int primary key,
Nombre varchar(16),
Tipo varchar(64),
Telefono char(12),
Producto varchar(64),
Direnccion varchar(64),
Idcliente int not null FOREIGN KEY REFERENCES cliente(Id)
)INSERT INTO Empresa(Id, Nombre, Telefono, Direnccion, Producto, IdCliente)
VALUES
  (1,'ABC S.A.', '1234567890', 'Calle 123', 'Producto 1', 1),
  (2,'XYZ S.A.', '0987654321', 'Avenida 456', 'Producto 2', 2),
  (3,'LMN S.A.', '555444333', 'Boulevard 789', 'Producto 1', 3),
  (4,'ABC S.A.', '777666555', 'Calle 456', 'Producto 3', 4),
  (5,'XYZ S.A.', '111222333', 'Avenida 789', 'Producto 2', 5),
  (6,'LMN S.A.', '333444555', 'Calle 789', 'Producto 3', 6),
  (7,'ABC S.A.', '999888777', 'Avenida 456', 'Producto 1', 7),
  (8,'XYZ S.A.', '111333555', 'Boulevard 789', 'Producto 2', 8),
  (9,'LMN S.A.', '222444666', 'Calle 456', 'Producto 3', 9),
  (10,'ABC S.A.', '777888999', 'Avenida 789', 'Producto 1', 10);
  create table Producto(
  id int primary key,
  Nombre varchar(64),
  Costo money,
  Precio money,
  FechaVencimiento date,
  Codigo int,
  Cantidad int
  )

  INSERT INTO Producto(Id, Nombre, Costo, Precio, FechaVencimiento, Codigo, Cantidad)
VALUES
  (1, 'Producto 1', 10, 20, '2024-01-01',1234556, 50),
  (2, 'Producto 2', 20, 30, '2024-02-01', 123650, 100),
  (3, 'Producto 3', 15, 25, '2024-03-01', 123456, 75),
  (4, 'Producto 4', 25, 35, '2024-04-01', 654321, 120),
  (5, 'Producto 5', 30, 40, '2024-05-01', 987654, 150),
  (6, 'Producto 6', 20, 30, '2024-06-01', 963852, 100),
  (7, 'Producto 7', 15, 25, '2024-07-01', 741852, 75),
  (8, 'Producto 8', 25, 35, '2024-08-01', 852963, 120),
  (9, 'Producto 9', 30, 40, '2024-09-01', 147258, 150),
  (10,'Producto 10',20, 30, '2024-10-01', 369825, 100)
  create table Proveedores(

Id int primary key,
Nombre varchar(16),
TipoProveedor varchar(64),
Telefono char(12),
Direccion varchar(64),
IdProducto int FOREIGN KEY REFERENCES Producto(Id),

)
  INSERT INTO Proveedores(Id, nombre, TipoProveedor, Telefono, Direccion, IdProducto)
VALUES
  (1, 'Supermercado A', 'Supermercado', '1234567890', 'Calle 123', 1),
  (2, 'Farmacia B', 'Farmacia', '0987654321', 'Avenida 456', 2),
  (3, 'Supermercado C', 'Supermercado', '555444333', 'Boulevard 789', 3),
  (4, 'Farmacia D', 'Farmacia', '777666555', 'Calle 456', 4),
  (5, 'Supermercado E', 'Supermercado', '111222333', 'Avenida 789', 5),
  (6, 'Farmacia F', 'Farmacia', '333444555', 'Calle 789', 6),
  (7, 'Supermercado G', 'Supermercado', '999888777', 'Avenida 456', 7),
  (8, 'Farmacia H', 'Farmacia', '111333555', 'Boulevard 789', 8),
  (9, 'Supermercado I', 'Supermercado', '222444666', 'Calle 456', 9),
  (10, 'Farmacia J', 'Farmacia', '777888999', 'Avenida 789', 10);
  CREATE TABLE Empleados (
  Id INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Telefono VARCHAR(20),
  Direccion VARCHAR(100),
  Sueldo FLOAT,
  IdEmpresa INT FOREIGN KEY REFERENCES Empresa(Id)
);
INSERT INTO Empleados (Id, Nombre, Apellido, Telefono, Direccion, Sueldo, IdEmpresa) VALUES
(1, 'Juan', 'Perez', '555-1234', 'Calle 123, Ciudad', 2000.00, 1),
(2, 'Maria', 'Gomez', '555-5678', 'Calle 456, Ciudad', 2500.00, 1),
(3, 'Pedro', 'Lopez', '555-9012', 'Calle 789, Ciudad', 2200.00, 2),
(4, 'Ana', 'Rodriguez', '555-3456', 'Calle 012, Ciudad', 1800.00, 2),
(5, 'Luis', 'Gonzalez', '555-7890', 'Calle 345, Ciudad', 1900.00, 3),
(6, 'Sofia', 'Hernandez', '555-2345', 'Calle 678, Ciudad', 2300.00, 3),
(7, 'Miguel', 'Diaz', '555-6789', 'Calle 901, Ciudad', 2100.00, 4),
(8, 'Carla', 'Torres', '555-1235', 'Calle 234, Ciudad', 2400.00, 4),
(9, 'Mario', 'Garcia', '555-5679', 'Calle 567, Ciudad', 2000.00, 5),
(10, 'Isabel', 'Sanchez', '555-9013', 'Calle 890, Ciudad', 2600.00, 5);
CREATE TABLE Servicio (
  Id INT PRIMARY KEY,
  TipoServicio VARCHAR(256),
  IdCliente INT,
  FOREIGN KEY (IdCliente) REFERENCES Cliente(Id)
);

INSERT INTO Servicio (Id, TipoServicio, IdCliente) VALUES
(1, 'Creación y Diseño de Software', 1),
(2, 'Asesoramiento en Base de Datos', 2),
(3, 'Monitoreo y Reestructuración de Base de Datos', 3),
(4, 'Diseño de Inventario', 4),
(5, 'Creación y Diseño de Software', 2),
(6, 'Asesoramiento en Base de Datos', 3),
(7, 'Monitoreo y Reestructuración de Base de Datos', 4),
(8, 'Diseño de Inventario', 5),
(9, 'Creación y Diseño de Software', 3),
(10, 'Asesoramiento en Base de Datos', 4);

select* from Empleados

