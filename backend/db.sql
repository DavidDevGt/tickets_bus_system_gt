CREATE DATABASE sistema_tickets_buses;
USE sistema_tickets_buses;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    usuario_id INT NOT NULL
);

CREATE TABLE terminales_buses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    departamento_id INT NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    usuario_id INT NOT NULL
);

CREATE TABLE destinos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    terminal_id INT NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    usuario_id INT NOT NULL
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(255) NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL
);

CREATE TABLE pasajeros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    documento_identidad VARCHAR(255) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    usuario_id INT NOT NULL
);

CREATE TABLE equipaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pasajero_id INT NOT NULL,
    descripcion VARCHAR(255),
    ticket_equipaje_id INT,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    usuario_id INT NOT NULL
);

CREATE TABLE tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    pasajero_id INT NOT NULL,
    destino_id INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    fecha_viaje DATETIME NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion DATETIME ON UPDATE CURRENT_TIMESTAMP,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    usuario_id INT NOT NULL
);
