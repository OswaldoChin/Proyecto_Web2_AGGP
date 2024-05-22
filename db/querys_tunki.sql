SELECT * FROM tipo_usuario;
INSERT INTO tipo_usuario
VALUES 
	('Administrador'),
	('Usuario'),
	('Moderador');

SELECT * FROM usuario;
INSERT INTO usuario(usuario, clave, celular, tipo_usuario, saldo)
VALUES
	('aguilar', 'root', '952123123', 1, 10000);
INSERT INTO usuario(usuario, clave, celular, tipo_usuario, saldo)
VALUES
	('chino', 'root', '952123456', 1, 5000),
	('gonzales', 'root', '952123543', 3, 5000),
	('perez', 'root', '952123321', 3, 4000),
	('eduardo', 'root', '952987654', 2, 1000),
	('sergio', 'root', '952876234', 2, 500);

SELECT * FROM estado_transferencia;
INSERT INTO estado_transferencia
VALUES 
	('Pendiente'),
	('Completada'),
	('Cancelada');

SELECT * FROM transferencia;
INSERT INTO transferencia(id_emisor, id_receptor, cantidad, estado, fecha)
VALUES 
	(1, 4, 200, 2, '2024-05-22'),
	(3, 5, 50, 3, '2024-05-22'),
	(4, 5, 100, 1, '2024-05-22');
