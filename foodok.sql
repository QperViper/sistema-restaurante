CREATE DATABASE foodokey;
USE foodokey;
DROP DATABASE foodokey;


CREATE TABLE IF NOT EXISTS cajero(
rut int(9) NOT NULL,
nombres varchar(30) NOT NULL,
apellidos varchar(30) NOT NULL,
contraseña varchar(30) 	NOT NULL,
celular int(9) 	NOT NULL,
PRIMARY KEY(rut)
);

CREATE TABLE IF NOT EXISTS cliente(
id int NOT NULL AUTO_INCREMENT,
PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS categoria(
id int NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS pedido(
id int NOT NULL AUTO_INCREMENT,
id_cliente int NOT NULL,
rut_cajero int(9) NOT NULL,
comentario varchar(200) NOT NULL,
total int NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(rut_cajero) REFERENCES cajero(rut) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(id_cliente) REFERENCES cliente(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS producto(
id int NOT NULL AUTO_INCREMENT,
id_pedido int NOT NULL,
id_categoria  int NOT NULL,
nombre varchar(50) NOT NULL,
precio int NOT NULL,
disponibilidad boolean NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_categoria) REFERENCES categoria(id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(id_pedido) REFERENCES pedido(id) ON DELETE CASCADE ON UPDATE CASCADE
);

create TABLE if not exists boleta(
id int NOT NULL AUTO_INCREMENT,
rut_cajero int(9) NOT NULL,
total int NOT NULL,
fecha DATE NOT NULL,
primary key(id),
FOREIGN KEY(rut_cajero) REFERENCES cajero(rut) ON DELETE CASCADE ON UPDATE CASCADE,
);



