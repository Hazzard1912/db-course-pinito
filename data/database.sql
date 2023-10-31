CREATE TABLE cliente(
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  observaciones VARCHAR(45)
);

CREATE TABLE mesero(
  id_mesero INT PRIMARY KEY,
  nombre VARCHAR(45),
  apellido1 VARCHAR(45),
  apellido2 VARCHAR(45)
);

CREATE TABLE platillo(
  id_platillo INT PRIMARY KEY,
  nombre VARCHAR(45),
  importe INT
);

CREATE TABLE bebida(
  id_bebida INT PRIMARY KEY,
  nombre VARCHAR(45),
  importe INT
);

CREATE TABLE mesa(
  id_mesa INT PRIMARY KEY,
  num_comensales INT,
  ubicacion VARCHAR(45)
);

CREATE TABLE factura(
  id_factura INT PRIMARY KEY,
  fecha_factura DATE,
  id_cliente INT,
  id_mesero INT,
  id_platillo INT,
  id_bebida INT,
  id_mesa INT,
  CONSTRAINT fk_factura_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente) ON UPDATE NO ACTION ON DELETE RESTRICT,
  FOREIGN KEY(id_mesero) REFERENCES mesero(id_mesero) ON UPDATE RESTRICT ON DELETE RESTRICT,
  FOREIGN KEY(id_platillo) REFERENCES platillo(id_platillo),
  FOREIGN KEY(id_bebida) REFERENCES bebida(id_bebida) ON UPDATE RESTRICT,
  FOREIGN KEY(id_mesa) REFERENCES mesa(id_mesa) ON UPDATE NO ACTION ON DELETE CASCADE
);