--SELECT * FROM tipo_usuario;
INSERT INTO tipo_usuario
VALUES 
	('Administrador'),
	('Usuario'),
	('Moderador');

--SELECT * FROM usuario;
INSERT INTO usuario(usuario, clave, celular, tipo_usuario, saldo)
VALUES
	('aguilar', 'root', '952123123', 1, 10000);
INSERT INTO usuario(usuario, clave, celular, tipo_usuario, saldo)
VALUES
	('chino', 'root', '952123456', 1, 5000),
	('gonzales', 'root', '952123543', 3, 5000),
	('perez', 'root', '952123321', 3, 4000),
	('eduardo', 'root', '952987654', 2, 1000),
	('sergio', 'root', '952876234', 2, 500),
	('gustavo', 'root', '984654512', 2, 1050);

--SELECT * FROM estado_transferencia;
INSERT INTO estado_transferencia
VALUES 
	('Pendiente'),
	('Completada'),
	('Cancelada');

--SELECT * FROM transferencia;
INSERT INTO transferencia(id_emisor, id_receptor, cantidad, estado, fecha)
VALUES 
	(1, 4, 200, 2, '2024-05-22'),
	(3, 5, 50, 3, '2024-05-22'),
	(4, 5, 100, 1, '2024-05-22');

INSERT INTO transferencia(id_emisor, id_receptor, cantidad, estado, fecha)
VALUES 
	(2, 1, 100, 3, '2024-06-11'),
	(4, 2, 150, 2, '2024-06-11'),
	(3, 3, 10, 2, '2024-06-12'),
	(6, 5, 50, 2, '2024-06-12'),
	(7, 4, 40, 3, '2024-06-13'),
	(2, 7, 30, 3, '2024-06-13'),
	(4, 2, 20, 1, '2024-06-13');



-- SELECT * FROM producto;
INSERT INTO producto (nombre, descripcion, precio, stock, categoria, fecha_creacion)
VALUES
-- Productos Económicos (100 a 500 Rumis)
('Polo de Manga Corta', 'Polo de manga corta para clima fresco', 180, 30, 'Ropa', '2024-06-12 14:00:00'),
('Gorro de Lana', 'Gorro de lana para el invierno', 170, 70, 'Accesorios', '2024-06-12 15:00:00'),
('Teclado Inalambrico', 'Producto de Computo', 190, 90, 'Electronica', '2024-06-12 17:00:00'),
('Mouse Logitech', 'Polo ajustado para un look moderno', 300, 50, 'Ropa', '2024-06-12 18:00:00'),

-- Productos de Gama Media (500 Rumis)
('Reloj Deportivo', 'Reloj con funciones deportivas y cronómetro', 500, 50, 'Electrónica', '2024-06-13 18:00:00'),
('Auriculares Bluetooth', 'Auriculares inalámbricos con bluetooth', 500, 40, 'Electrónica', '2024-06-13 19:00:00'),
('Mochila de Viaje', 'Mochila resistente para viajes largos', 500, 30, 'Accesorios', '2024-06-13 20:00:00'),

-- Productos Exclusivos (2000 Rumis a 4000)
('PlayStation 2', 'Consola de videojuegos PlayStation 2', 2000, 10, 'Electrónica', '2024-06-14 12:00:00'),
('iPhone 12', 'Teléfono móvil Apple iPhone 12', 30000, 15, 'Electrónica', '2024-06-14 13:00:00'),
('Laptop HP', 'Laptop HP con 8GB RAM y 256GB SSD', 40000, 12, 'Electrónica', '2024-06-14 14:00:00');



-- SELECT * FROM USUARIO;

-- Insertar registros en la tabla favoritos
INSERT INTO favoritos (id_usuario, id_producto, fecha_agregado)
VALUES
(3, 10, '2024-06-01 10:00:00'),
(3, 2, '2024-06-02 11:00:00'),
(3, 3, '2024-06-03 12:00:00'),
(3, 4, '2024-06-04 13:00:00'),
(3, 5, '2024-06-05 14:00:00'),
(4, 5, '2024-06-06 15:00:00'),
(4, 3, '2024-06-07 16:00:00'),
(4, 4, '2024-06-08 17:00:00'),
(4, 6, '2024-06-09 18:00:00'),
(4, 7, '2024-06-10 19:00:00'),
(4, 8, '2024-06-11 20:00:00'),
(4, 9, '2024-06-12 21:00:00'),
(4, 10, '2024-06-13 22:00:00'),
(4, 2, '2024-06-14 23:00:00'),
(4, 1, '2024-06-15 08:00:00'),
(4, 1, '2024-06-16 09:00:00'),
(5, 2, '2024-06-17 10:00:00'),
(5, 3, '2024-06-18 11:00:00'),
(5, 4, '2024-06-19 12:00:00'),
(5, 5, '2024-06-20 13:00:00'),
(6, 7, '2024-06-21 14:00:00'),
(6, 7, '2024-06-22 15:00:00'),
(6, 8, '2024-06-23 16:00:00'),
(6, 8, '2024-06-24 17:00:00'),
(7, 9, '2024-06-25 18:00:00'),
(7, 9, '2024-06-26 19:00:00'),
(7, 10, '2024-06-27 20:00:00'),
(7, 2, '2024-06-28 21:00:00'),
(7, 3, '2024-06-29 22:00:00'),
(7, 4, '2024-06-30 23:00:00');

-- SELECT * FROM tipo_usuario

-- SELECT * FROM calificacion_producto
-- Insertar registros en la tabla calificacion_producto
INSERT INTO calificacion_producto (id_producto, id_usuario, calificacion, comentario, fecha_calificacion)
VALUES
(1, 3, 5, 'Excelente calidad y diseño.', '2024-06-01 10:00:00'),
(2, 3, 4, 'Muy bueno, pero un poco caro.', '2024-06-02 11:00:00'),
(3, 3, 3, 'Está bien, cumple su función.', '2024-06-03 12:00:00'),
(4, 3, 2, 'No cumple con mis expectativas.', '2024-06-04 13:00:00'),
(5, 3, 1, 'De mala calidad, no lo recomiendo.', '2024-06-05 14:00:00'),
(6, 4, 4, 'Buena relación calidad-precio.', '2024-06-06 15:00:00'),
(5, 4, 5, 'Me encanta, volveré a comprar.', '2024-06-07 16:00:00'),
(5, 4, 3, 'Está bien por el precio.', '2024-06-08 17:00:00'),
(5, 4, 2, 'Podría mejorar en calidad.', '2024-06-09 18:00:00'),
(6, 4, 1, 'Defectuoso, no lo recomiendo.', '2024-06-10 19:00:00'),
(7, 5, 5, 'Excelente, superó mis expectativas.', '2024-06-11 20:00:00'),
(8, 5, 4, 'Muy bueno, aunque puede mejorar.', '2024-06-12 21:00:00'),
(9, 5, 3, 'Satisfecho con el producto.', '2024-06-13 22:00:00'),
(10, 5, 2, 'No es lo que esperaba.', '2024-06-14 23:00:00'),
(1, 5, 1, 'No lo recomendaría.', '2024-06-15 08:00:00'),
(2, 6, 5, 'Producto de alta calidad.', '2024-06-16 09:00:00'),
(9, 6, 4, 'Muy buen producto.', '2024-06-17 10:00:00'),
(3, 6, 3, 'Aceptable, podría ser mejor.', '2024-06-18 11:00:00'),
(4, 6, 2, 'No me gustó mucho.', '2024-06-19 12:00:00'),
(4, 6, 1, 'No lo volvería a comprar.', '2024-06-20 13:00:00'),
(1, 7, 5, 'Encantado con este producto.', '2024-06-21 14:00:00'),
(2, 7, 4, 'Buena calidad, recomendaría.', '2024-06-22 15:00:00'),
(3, 7, 3, 'Está bien, cumple con lo esperado.', '2024-06-23 16:00:00'),
(4, 7, 2, 'No cumple con lo que promete.', '2024-06-24 17:00:00'),
(7, 7, 1, 'Mala calidad, no compraría de nuevo.', '2024-06-25 18:00:00'),
(6, 3, 4, 'Buen producto, recomendaría.', '2024-06-26 19:00:00'),
(7, 4, 5, 'Muy satisfecho con la compra.', '2024-06-27 20:00:00'),
(8, 5, 4, 'Cumple con lo esperado.', '2024-06-28 21:00:00'),
(9, 6, 3, 'Producto regular.', '2024-06-29 22:00:00'),
(1, 7, 2, 'No me gustó, calidad baja.', '2024-06-30 23:00:00');

-- SELECT * FROM carrito;
-- Insertar registros en la tabla carrito
INSERT INTO carrito (id_usuario, fecha_creacion)
VALUES
(3, '2024-06-01 10:00:00'),
(3, '2024-06-05 11:00:00'),
(4, '2024-06-07 12:00:00'),
(4, '2024-06-10 13:00:00'),
(5, '2024-06-12 14:00:00'),
(5, '2024-06-15 15:00:00'),
(6, '2024-06-18 16:00:00'),
(6, '2024-06-20 17:00:00'),
(7, '2024-06-22 18:00:00'),
(7, '2024-06-25 19:00:00');

-- SELECT * FROM detalle_carrito
-- Insertar registros en la tabla detalle_carrito
-- Insertar registros en la tabla detalle_carrito
INSERT INTO detalle_carrito (id_carrito, id_producto, cantidad)
VALUES
(1, 2, 2),
(3, 3, 1),
(3, 1, 3),
(4, 2, 2),
(4, 5, 1),
(3, 6, 2),
(2, 4, 2),
(8, 8, 3),
(9, 1, 1),
(10, 10, 2);

-- SELECT * FROM compra;

INSERT INTO Compra (id_usuario, fecha_compra, total)
VALUES
(3, '2024-06-01 10:00:00', 150.00),
(4, '2024-06-02 11:00:00', 230.50),
(5, '2024-06-03 12:00:00', 180.75),
(6, '2024-06-04 13:00:00', 420.25),
(7, '2024-06-05 14:00:00', 300.00),
(3, '2024-06-06 15:00:00', 280.50),
(4, '2024-06-07 16:00:00', 195.75),
(5, '2024-06-08 17:00:00', 150.25),
(6, '2024-06-09 18:00:00', 410.00),
(7, '2024-06-10 19:00:00', 275.80);

-- SELECT * FROM DetalleCompra
INSERT INTO DetalleCompra (id_compra, id_producto, cantidad, precio)
VALUES
(2, 2, 2, 25.00),
(3, 2, 1, 45.50),
(3, 3, 3, 15.75),
(4, 3, 2, 120.00),
(2, 8, 1, 50.00),
(6, 6, 4, 30.50),
(7, 7, 2, 18.75),
(1, 8, 3, 55.00),
(9, 9, 1, 75.25),
(10, 2, 2, 90.00);

-- SELECT * FROM producto
-- SELECT * FROM imagen_producto
-- Insertar registros en la tabla imagen_producto
INSERT INTO imagen_producto (id_producto, url_imagen, descripcion, es_principal, fecha_subida)
VALUES
(1, 'https://promart.vteximg.com.br/arquivos/ids/505478-1000-1000/48184.jpg?v=637327778257970000', 'Imagen principal Polo manga Corta', 1, '2024-06-01 10:00:00'),
(1, 'https://sketchlife.pe/wp-content/uploads/2022/10/polo-hombre-azul.jpg', 'Imagen secundaria Polo manga Corta', 0, '2024-06-02 11:00:00'),
(2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYi98rkA7VuTtJrX6Eb6ticquLc5uayf40iA&s', 'Imagen principal Gorro de Lana', 1, '2024-06-03 12:00:00'),
(2, 'https://www.lamaisondelalpaga.com/651-large_default/gorro-de-lana-huaura-para-mujer.jpg', 'Imagen secundaria Gorro de Lana', 0, '2024-06-04 13:00:00'),
(3, 'https://http2.mlstatic.com/D_NQ_NP_989919-MLA50247469229_062022-O.webp', 'Imagen principal Teclado Inalambrico', 1, '2024-06-05 14:00:00'),
(3, 'https://coolboxpe.vtexassets.com/arquivos/ids/361658/GC03528_1.jpg?v=638491580133470000', 'Imagen secundaria Teclado Inalambrico', 0, '2024-06-06 15:00:00'),
(3, 'https://www.impacto.com.pe/storage/products/1612021326CH-9145030-NA-1.jpg', 'Imagen secundaria Teclado Inalambrico', 0, '2024-06-06 15:00:00'),
(4, 'https://compusystemperu.com/wp-content/uploads/2021/04/g502-4.jpg', 'Imagen principal Mouse Logitech', 1, '2024-06-07 16:00:00'),
(4, 'https://www.tiendastec.com/wp-content/uploads/2022/09/Mouse-Logitech-G305-LIGHTSPEED-Blanco2.webp', 'Imagen secundaria Mouse Logitech', 0, '2024-06-08 17:00:00'),
(5, 'https://promart.vteximg.com.br/arquivos/ids/6833966-1000-1000/image-3c65bb6aff77464a9358870865235354.jpg?v=638144917487570000', 'Imagen principal Reloj Deportivo', 1, '2024-06-09 18:00:00'),
(5, 'https://clock.pe/cdn/shop/products/SANDA-relojes-deportivos-para-hombre-pulsera-Digital-LED-de-doble-pantalla-resistente-al-agua-militar-de.jpg_640x640_7ebd2897-47da-4c3a-ba6a-0aceb5b3a415.jpg?v=1680035039', 'Imagen secundaria Reloj Deportivo', 0, '2024-06-10 19:00:00'),
(6, 'https://oechsle.vteximg.com.br/arquivos/ids/16499988-1000-1000/image-0.jpg?v=638328962348770000', 'Imagen principal Auriculares Bluetooth', 1, '2024-06-09 18:00:00'),
(6, 'https://oechsle.vteximg.com.br/arquivos/ids/8506599-1000-1000/image-5e201603fc2f4a84b3f1a68c7d4472ae.jpg?v=637870529615400000', 'Imagen secundaria Auriculares Bluetooth', 0, '2024-06-10 19:00:00'),
(6, 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/121795124_01/w=800,h=800', 'Imagen secundaria Auriculares Bluetooth', 0, '2024-06-10 19:00:00'),
(7, 'https://http2.mlstatic.com/D_NQ_NP_794187-CBT50767832454_072022-O.webp', 'Imagen principal Mochila de Viaje', 1, '2024-06-09 18:00:00'),
(7, 'https://maletaviajeraperu.com/cdn/shop/collections/151762.webp?v=1697314338', 'Imagen secundaria Mochila de Viaje', 0, '2024-06-10 19:00:00'),
(8, 'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2012/12/Play-Station-21.jpg?fit=1800%2C1154&quality=50&strip=all&ssl=1', 'Imagen principal PlayStation2', 1, '2024-06-09 18:00:00'),
(8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvySQrIimAW4bDUwPhR574GiN51w6pXgHeTg&s', 'Imagen secundaria PlayStation2', 0, '2024-06-10 19:00:00'),
(9, 'https://promart.vteximg.com.br/arquivos/ids/4591539-1000-1000/image-553ad7dc20964bedb815d8381b5e7f92.jpg?v=637812665968430000', 'Imagen principal iPhone 12', 1, '2024-06-09 18:00:00'),
(9, 'https://tiendasishop.com/media/catalog/product/m/g/mgjc3lz_a_1.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700', 'Imagen secundaria iPhone 12', 0, '2024-06-10 19:00:00'),
(10, 'https://cdnx.jumpseller.com/motics/image/36905987/resize/1800/1800?1687889491', 'Imagen principal Laptop HP', 1, '2024-06-09 18:00:00'),
(10, 'https://www.mundolaptops.com/wp-content/uploads/2023/04/HP-15-DY5008LA-3-700x700.jpg.webp', 'Imagen secundaria Laptop HP', 0, '2024-06-10 19:00:00');





-- SELECT * FROM estado_transferencia
-- SELECT * FROM total_moneda



INSERT INTO imagen_producto (id_producto, url_imagen, descripcion, es_principal, fecha_subida)
VALUES
(1, 'https://oechsle.vteximg.com.br/arquivos/ids/9051721-1000-1000/imageUrl_2.jpg?v=637902224933070000', 'idk', 1, '2024-06-01 10:00:00');