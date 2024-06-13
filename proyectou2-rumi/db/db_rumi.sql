CREATE DATABASE rumi;

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

-- new  tables
-- Tabla de productos
CREATE TABLE producto (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    categoria VARCHAR(50),
    fecha_creacion DATETIME DEFAULT GETDATE()
);

-- Tabla de carrito de compras
CREATE TABLE carrito (
    id_carrito INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT,
    fecha_creacion DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla de detalle del carrito de compras
CREATE TABLE detalle_carrito (
    id_detalle_carrito INT IDENTITY(1,1) PRIMARY KEY,
    id_carrito INT,
    id_producto INT,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla de favoritos
CREATE TABLE favoritos (
    id_favorito INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT,
    id_producto INT,
    fecha_agregado DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE Compra (
    id_compra INT PRIMARY KEY IDENTITY,
    id_usuario INT,  
    fecha_compra DATETIME,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE DetalleCompra (
    id_detalle INT PRIMARY KEY IDENTITY,
    id_compra INT,
    id_producto INT,
    cantidad INT,
    precio DECIMAL(10, 2),  
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- dos tablas mas
CREATE TABLE imagen_producto (
    id_imagen INT IDENTITY(1,1) PRIMARY KEY,
    id_producto INT,
    url_imagen VARCHAR(255) NOT NULL,
    descripcion TEXT,
    es_principal BIT DEFAULT 0,
    fecha_subida DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
)


-- Tabla de calificaciones de productos
CREATE TABLE calificacion_producto (
    id_calificacion INT IDENTITY(1,1) PRIMARY KEY,
    id_producto INT,
    id_usuario INT,
    calificacion TINYINT CHECK (calificacion BETWEEN 1 AND 5),
    comentario TEXT,
    fecha_calificacion DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);


