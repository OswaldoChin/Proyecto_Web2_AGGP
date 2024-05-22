CREATE DATABASE tunki;

CREATE TABLE tipo_usuario(
	id_tipo_usuario INT IDENTITY(1,1) PRIMARY KEY,
    tipo varchar(50)
);

CREATE TABLE usuario(
	id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    usuario varchar(100) NOT NULL UNIQUE,
    clave varchar(50),
    celular char(9),
    tipo_usuario int,
	saldo decimal(10,2),
	FOREIGN KEY (tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)
);

CREATE TABLE estado_transferencia(
	id_estado_transferencia INT IDENTITY(1,1) PRIMARY KEY,
	estado VARCHAR(50)
)

CREATE TABLE transferencia(
	id_transferencia INT IDENTITY(1,1) PRIMARY KEY,
    id_emisor int,
    id_receptor int,
    cantidad DECIMAL(10,2),
    estado INT,
    fecha DATETIME,
    FOREIGN KEY (id_emisor) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_receptor) REFERENCES usuario(id_usuario),
	FOREIGN KEY (estado) REFERENCES estado_transferencia(id_estado_transferencia),
);



CREATE TABLE total_moneda(
	id_moneda INT IDENTITY(1,1) PRIMARY KEY,
    total_moneda DECIMAL(10,2),
	fecha_actualizacion DATETIME
);