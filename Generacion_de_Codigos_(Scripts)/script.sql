
-- CREANDO TIPO DE DE DATO

CREATE TYPE DATOS_COCHE AS (
    Modelo VARCHAR(64),
    Antiguedad INT,
    Kiometros INT,
    Estado VARCHAR(264),
	Precio FLOAT
    );

-- -----------------------------------------------------
-- Table Tiendas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Tiendas (
  Id_tienda INT NOT NULL,
  Localizacion VARCHAR(64) NOT NULL,
  Stock INT NOT NULL CHECK(Stock >= 0),
  Aforo INT NOT NULL CHECK(Aforo > 0),
  PRIMARY KEY (Id_tienda));

-- -----------------------------------------------------
-- Table Trabajadores
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Trabajadores (
  DNI VARCHAR(9) NOT NULL,
  Puesto VARCHAR(64) NOT NULL,
  Nombre VARCHAR(64) NOT NULL,
  Apellidos VARCHAR(64) NOT NULL,
  Sueldo FLOAT NOT NULL CHECK(Sueldo > 0),
  Horario VARCHAR(264) NOT NULL,
  Telefono INT NOT NULL,
  Id_tienda INT NOT NULL,
  PRIMARY KEY (DNI),
  CONSTRAINT fk_Trabajadores_Tiendas
    FOREIGN KEY (Id_tienda)
    REFERENCES Tiendas (Id_tienda)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Trabajadores_Tiendas_idx ON Trabajadores(Id_tienda);


-- -----------------------------------------------------
-- Table Clientes_Compra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Clientes_Compra (
  DNI VARCHAR(9) NOT NULL,
  Nombre VARCHAR(64) NOT NULL,
  Apellidos VARCHAR(64) NULL,
  Telefono INT NOT NULL,
  PRIMARY KEY (DNI));


-- -----------------------------------------------------
-- Table Ventas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Ventas (
  Id_venta INT NOT NULL,
  Importe FLOAT NOT NULL CHECK(Importe > 0),
  Fecha DATE NOT NULL,
  DNI_trabajador VARCHAR(9) NOT NULL,
  DNI_comprador VARCHAR(9) NOT NULL,
  PRIMARY KEY (Id_venta),
  CONSTRAINT fk_Ventas_Trabajadores1
    FOREIGN KEY (DNI_trabajador)
    REFERENCES Trabajadores (DNI)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Ventas_Clientes_Compra1
    FOREIGN KEY (DNI_comprador)
    REFERENCES Clientes_Compra (DNI)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Ventas_Trabajadores1_idx ON Ventas(DNI_trabajador);
  CREATE INDEX fk_Ventas_Clientes_Compra1_idx ON Ventas(DNI_comprador);


-- -----------------------------------------------------
-- Table Clientes_Venta
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Clientes_Venta (
  DNI VARCHAR(9) NOT NULL,
  Nombre VARCHAR(64) NOT NULL,
  Apellidos VARCHAR(64) NULL,
  Telefono INT NOT NULL,
  PRIMARY KEY (DNI));


-- -----------------------------------------------------
-- Table Vehiculos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Vehiculos (
  Matricula VARCHAR(7) NOT NULL,
  Num_rotaciones INT NOT NULL CHECK(Num_rotaciones >= 0),
  Datos_coche DATOS_COCHE NOT NULL,
  Disponibilidad VARCHAR(45) NOT NULL,
  Id_tienda INT,
  PRIMARY KEY (Matricula),
  CONSTRAINT fk_Vehiculos_Tiendas1
    FOREIGN KEY (Id_tienda)
    REFERENCES Tiendas (Id_tienda)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Vehiculos_Tiendas1_idx ON Vehiculos(Id_tienda);


-- -----------------------------------------------------
-- Table Venta_Vehiculos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Venta_Vehiculos (
  Fin_garantia DATE NULL,
  Incidentes VARCHAR(264) NULL,
  Num_incidentes INT NOT NULL CHECK(Num_incidentes >= 0),
  Id_venta INT NOT NULL,
  Matricula VARCHAR(7) NOT NULL,
  PRIMARY KEY (Id_venta, Matricula),
  CONSTRAINT fk_Venta_Vehiculos_Ventas1
    FOREIGN KEY (Id_venta)
    REFERENCES Ventas (Id_venta)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Venta_Vehiculos_Vehiculos1
    FOREIGN KEY (Matricula)
    REFERENCES Vehiculos (Matricula)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Venta_Vehiculos_Ventas1_idx ON Venta_Vehiculos(Id_venta);
  CREATE INDEX fk_Venta_Vehiculos_Vehiculos1_idx ON Venta_Vehiculos(Matricula);


-- -----------------------------------------------------
-- Table Vehiculos_Adquiridos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Vehiculos_Adquiridos (
  Fecha_adquisicion DATE NULL,
  Precio_adquisicion FLOAT NOT NULL CHECK(Precio_adquisicion > 0),
  Matricula VARCHAR(7) NOT NULL,
  DNI_vendedor VARCHAR(9) NOT NULL,
  PRIMARY KEY (Matricula),
  CONSTRAINT fk_Vehiculos_Adquiridos_Vehiculos1
    FOREIGN KEY (Matricula)
    REFERENCES Vehiculos (Matricula)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Vehiculos_Adquiridos_Clientes_Venta1
    FOREIGN KEY (DNI_vendedor)
    REFERENCES Clientes_Venta (DNI)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Vehiculos_Adquiridos_Vehiculos1_idx ON Vehiculos_Adquiridos(Matricula);
  CREATE INDEX fk_Vehiculos_Adquiridos_Clientes_Venta1_idx ON Vehiculos_Adquiridos(DNI_vendedor);


-- -----------------------------------------------------
-- Table Vehiculos_Entregados
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Vehiculos_Entregados (
  Fecha_entrega DATE NULL,
  Matricula VARCHAR(7) NOT NULL,
  DNI_cliente VARCHAR(9) NOT NULL,
  PRIMARY KEY (Matricula),
  CONSTRAINT fk_Vehiculos_Entregados_Vehiculos1
    FOREIGN KEY (Matricula)
    REFERENCES Vehiculos (Matricula)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Vehiculos_Entregados_Clientes_Compra1
    FOREIGN KEY (DNI_cliente)
    REFERENCES Clientes_Compra (DNI)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Vehiculos_Entregados_Vehiculos1_idx ON Vehiculos_Entregados(Matricula);
  CREATE INDEX fk_Vehiculos_Entregados_Clientes_Compra1_idx ON Vehiculos_Entregados(DNI_cliente);


-- -----------------------------------------------------
-- Table Rotacion
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Rotacion (
  Id_rotacion INT NOT NULL,
  Fecha DATE NOT NULL,
  Tienda_origen INT NOT NULL,
  Tienda_destino INT NOT NULL,
  Matricula VARCHAR(7) NOT NULL,
  PRIMARY KEY (Id_rotacion, Matricula),
  CONSTRAINT fk_Rotacion_Tiendas1
    FOREIGN KEY (Tienda_origen)
    REFERENCES Tiendas (Id_tienda)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Rotacion_Tiendas2
    FOREIGN KEY (Tienda_destino)
    REFERENCES Tiendas (Id_tienda)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Rotacion_Vehiculos1
    FOREIGN KEY (Matricula)
    REFERENCES Vehiculos (Matricula)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
	
  CREATE INDEX fk_Rotacion_Tiendas1_idx ON Rotacion(Tienda_origen);
  CREATE INDEX fk_Rotacion_Tiendas2_idx ON Rotacion(Tienda_destino);
  CREATE INDEX fk_Rotacion_Vehiculos1_idx ON Rotacion(Matricula);
