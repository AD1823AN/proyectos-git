/*
 Navicat Premium Data Transfer

 Source Server         : Proyecto
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : baseproyecto

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 15/06/2024 01:38:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `Id_Compra` mediumint NOT NULL AUTO_INCREMENT,
  `Folio_ticket` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Total` double NOT NULL,
  `Id_Proveedor` int NOT NULL,
  PRIMARY KEY (`Id_Compra`) USING BTREE,
  INDEX `Id_Proveedor`(`Id_Proveedor` ASC) USING BTREE,
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedor` (`Id_Proveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (1, 'TICKET123', '2024-06-11 19:41:01', 0, 1);
INSERT INTO `compra` VALUES (2, 'TICKET123', '2024-06-11 19:52:41', 0, 1);
INSERT INTO `compra` VALUES (4, 'TICKET123', '2024-06-11 20:01:57', 0, 1);
INSERT INTO `compra` VALUES (5, 'TICKET123', '2024-06-11 20:09:49', 0, 1);
INSERT INTO `compra` VALUES (6, 'TICKET123', '2024-06-11 20:13:42', 0, 1);
INSERT INTO `compra` VALUES (7, 'TICKET123', '2024-06-11 20:22:24', 0, 1);
INSERT INTO `compra` VALUES (8, 'TICKET123', '2024-06-11 20:25:37', 0, 1);
INSERT INTO `compra` VALUES (9, 'TICKET123', '2024-06-11 20:37:39', 0, 1);
INSERT INTO `compra` VALUES (10, 'TICKET123', '2024-06-11 20:38:50', 0, 1);
INSERT INTO `compra` VALUES (11, 'TICKET123', '2024-06-11 21:30:27', 0, 1);
INSERT INTO `compra` VALUES (12, 'TICKET123', '2024-06-11 21:31:34', 0, 1);
INSERT INTO `compra` VALUES (13, 'TICKET123', '2024-06-11 21:38:28', 0, 1);
INSERT INTO `compra` VALUES (14, 'TICKET123', '2024-06-11 21:40:36', 0, 1);
INSERT INTO `compra` VALUES (15, 'TICKET123', '2024-06-11 21:40:42', 0, 1);
INSERT INTO `compra` VALUES (16, 'TICKET123', '2024-06-11 21:43:17', 0, 1);
INSERT INTO `compra` VALUES (17, 'TICKET123', '2024-06-11 21:45:04', 0, 1);
INSERT INTO `compra` VALUES (18, 'TICKET123', '2024-06-11 21:45:10', 0, 1);
INSERT INTO `compra` VALUES (19, 'TICKET123', '2024-06-11 21:46:55', 0, 1);
INSERT INTO `compra` VALUES (25, 'TICKET_6668c0bb372ec', '2024-06-11 23:25:15', 0, 1);
INSERT INTO `compra` VALUES (26, 'TICKET_6668c3913c808', '2024-06-11 23:37:21', 0, 1);
INSERT INTO `compra` VALUES (27, 'TICKET_6668c418cb33d', '2024-06-11 23:39:36', 0, 1);
INSERT INTO `compra` VALUES (28, 'TICKET_66692e2c3d0da', '2024-06-12 07:12:12', 0, 1);
INSERT INTO `compra` VALUES (29, 'TICKET_666d434562683', '2024-06-15 09:31:17', 0, 2);

-- ----------------------------
-- Table structure for detalle_compra
-- ----------------------------
DROP TABLE IF EXISTS `detalle_compra`;
CREATE TABLE `detalle_compra`  (
  `Id_DetalleCompra` mediumint NOT NULL AUTO_INCREMENT,
  `Id_Compra` mediumint NULL DEFAULT NULL,
  `Clv_Producto` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Cantidad` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id_DetalleCompra`) USING BTREE,
  INDEX `Id_Compra`(`Id_Compra` ASC) USING BTREE,
  INDEX `Clv_Producto`(`Clv_Producto` ASC) USING BTREE,
  CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`Id_Compra`) REFERENCES `compra` (`Id_Compra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`Clv_Producto`) REFERENCES `producto` (`Clv_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_compra
-- ----------------------------
INSERT INTO `detalle_compra` VALUES (1, 1, '123', 2);
INSERT INTO `detalle_compra` VALUES (2, 1, '454', 30);
INSERT INTO `detalle_compra` VALUES (3, 2, '123', 30);
INSERT INTO `detalle_compra` VALUES (4, 2, '45', 15);
INSERT INTO `detalle_compra` VALUES (5, 4, '123', 30);
INSERT INTO `detalle_compra` VALUES (6, 5, '123', 56);
INSERT INTO `detalle_compra` VALUES (7, 5, '454', 30);
INSERT INTO `detalle_compra` VALUES (8, 6, '830', 12);
INSERT INTO `detalle_compra` VALUES (9, 7, '454', 32);
INSERT INTO `detalle_compra` VALUES (10, 8, '123', 25);
INSERT INTO `detalle_compra` VALUES (11, 9, '123', 25);
INSERT INTO `detalle_compra` VALUES (12, 10, '123', 4);
INSERT INTO `detalle_compra` VALUES (13, 11, '123', 20);
INSERT INTO `detalle_compra` VALUES (14, 12, '123', 4);
INSERT INTO `detalle_compra` VALUES (15, 13, '123', 4);
INSERT INTO `detalle_compra` VALUES (16, 14, '123', 4);
INSERT INTO `detalle_compra` VALUES (17, 15, '123', 4);
INSERT INTO `detalle_compra` VALUES (18, 16, '123', 4);
INSERT INTO `detalle_compra` VALUES (19, 17, '123', 4);
INSERT INTO `detalle_compra` VALUES (27, 25, '123', 4);
INSERT INTO `detalle_compra` VALUES (28, 25, '454', 30);
INSERT INTO `detalle_compra` VALUES (29, 25, '45', 25);
INSERT INTO `detalle_compra` VALUES (30, 26, '123', 4);
INSERT INTO `detalle_compra` VALUES (31, 27, '123', 4);
INSERT INTO `detalle_compra` VALUES (32, 28, '45', 4);
INSERT INTO `detalle_compra` VALUES (33, 29, '45', 4);
INSERT INTO `detalle_compra` VALUES (34, 29, '454', 2);

-- ----------------------------
-- Table structure for detalle_venta
-- ----------------------------
DROP TABLE IF EXISTS `detalle_venta`;
CREATE TABLE `detalle_venta`  (
  `Id_DetalleVenta` mediumint NOT NULL AUTO_INCREMENT,
  `Clv_Producto` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Id_Venta` int NULL DEFAULT NULL,
  `Cantidad` int NULL DEFAULT NULL,
  `Precio` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_DetalleVenta`) USING BTREE,
  INDEX `Clv_Producto`(`Clv_Producto` ASC) USING BTREE,
  INDEX `Folio_Venta`(`Id_Venta` ASC) USING BTREE,
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`Clv_Producto`) REFERENCES `producto` (`Clv_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`Id_Venta`) REFERENCES `venta` (`Id_Venta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_venta
-- ----------------------------
INSERT INTO `detalle_venta` VALUES (1, '5643', 1, 2, 250.00);
INSERT INTO `detalle_venta` VALUES (2, '67804', 1, 2, 886.00);
INSERT INTO `detalle_venta` VALUES (3, '830', 1, 1, 1271.00);
INSERT INTO `detalle_venta` VALUES (4, '45', 2, 4, 2500.00);
INSERT INTO `detalle_venta` VALUES (5, '454', 2, 4, 290.00);
INSERT INTO `detalle_venta` VALUES (6, '67804', 2, 2, 786.00);
INSERT INTO `detalle_venta` VALUES (7, '45', 3, 4, 2500.00);
INSERT INTO `detalle_venta` VALUES (8, '454', 3, 4, 290.00);
INSERT INTO `detalle_venta` VALUES (9, '67804', 3, 2, 786.00);
INSERT INTO `detalle_venta` VALUES (10, '45', 4, 4, 2500.00);
INSERT INTO `detalle_venta` VALUES (11, '454', 4, 4, 290.00);
INSERT INTO `detalle_venta` VALUES (12, '67804', 4, 2, 786.00);
INSERT INTO `detalle_venta` VALUES (13, '45', 5, 4, 2500.00);
INSERT INTO `detalle_venta` VALUES (14, '43L2', 8, 4, 290.00);
INSERT INTO `detalle_venta` VALUES (15, '43L2', 9, 4, 290.00);
INSERT INTO `detalle_venta` VALUES (16, '45', 10, 23, 3080.00);
INSERT INTO `detalle_venta` VALUES (17, '45', 12, 2, 3080.00);
INSERT INTO `detalle_venta` VALUES (18, '45', 13, 2, 3080.00);
INSERT INTO `detalle_venta` VALUES (19, '454', 13, 4, 350.00);
INSERT INTO `detalle_venta` VALUES (20, '45', 14, 2, 3080.00);
INSERT INTO `detalle_venta` VALUES (21, '454', 14, 4, 350.00);
INSERT INTO `detalle_venta` VALUES (22, '45', 15, 2, 3080.00);
INSERT INTO `detalle_venta` VALUES (23, '454', 15, 4, 350.00);
INSERT INTO `detalle_venta` VALUES (24, '45', 16, 4, 3080.00);
INSERT INTO `detalle_venta` VALUES (25, '45', 17, 4, 3080.00);
INSERT INTO `detalle_venta` VALUES (26, '45', 18, 4, 3080.00);
INSERT INTO `detalle_venta` VALUES (27, '45', 19, 4, 3080.00);
INSERT INTO `detalle_venta` VALUES (28, '45', 20, 4, 3080.00);
INSERT INTO `detalle_venta` VALUES (29, '454', 20, 2, 350.00);
INSERT INTO `detalle_venta` VALUES (30, '45', 21, 4, 2500.00);
INSERT INTO `detalle_venta` VALUES (31, '45', 22, 3, 2500.00);
INSERT INTO `detalle_venta` VALUES (32, '45', 23, 3, 2500.00);

-- ----------------------------
-- Table structure for familia
-- ----------------------------
DROP TABLE IF EXISTS `familia`;
CREATE TABLE `familia`  (
  `Id_Familia` mediumint NOT NULL AUTO_INCREMENT,
  `Nom_Familia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  PRIMARY KEY (`Id_Familia`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of familia
-- ----------------------------
INSERT INTO `familia` VALUES (1, 'Batidora', '1');
INSERT INTO `familia` VALUES (2, 'Cacerola', '1');
INSERT INTO `familia` VALUES (3, 'Extractor', '1');
INSERT INTO `familia` VALUES (4, 'Olla', '1');
INSERT INTO `familia` VALUES (5, 'Plancha', '1');
INSERT INTO `familia` VALUES (6, 'Bateria', '1');
INSERT INTO `familia` VALUES (7, 'plancha', '0');

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `Id_Marca` mediumint NOT NULL AUTO_INCREMENT,
  `Nom_Marca` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  PRIMARY KEY (`Id_Marca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (1, 'Oster', '0');
INSERT INTO `marca` VALUES (2, 'Man', '1');
INSERT INTO `marca` VALUES (3, 'Ekco', '1');
INSERT INTO `marca` VALUES (4, 'Presto', '1');
INSERT INTO `marca` VALUES (5, 'Ufesa', '1');
INSERT INTO `marca` VALUES (6, 'Lion', '1');
INSERT INTO `marca` VALUES (7, 'Alfa', '1');
INSERT INTO `marca` VALUES (8, 'Hamilton', '1');
INSERT INTO `marca` VALUES (9, 'Rufill', '1');
INSERT INTO `marca` VALUES (10, 'prieba', '0');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `Clv_Producto` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nombre_Producto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Des_Producto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Id_Marca` mediumint NOT NULL AUTO_INCREMENT,
  `Id_Familia` mediumint NOT NULL,
  `Stock_Maximo` int NULL DEFAULT NULL,
  `Stock_Minimo` int NULL DEFAULT NULL,
  `Pre_Mayore` double NULL DEFAULT NULL,
  `Pre_Menudeo` double NULL DEFAULT NULL,
  `Pre_MedioMayoreo` double NULL DEFAULT NULL,
  `Existencias` int NULL DEFAULT NULL,
  `estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  PRIMARY KEY (`Clv_Producto`) USING BTREE,
  INDEX `Id_Marca`(`Id_Marca` ASC) USING BTREE,
  INDEX `Id_Familia`(`Id_Familia` ASC) USING BTREE,
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Id_Marca`) REFERENCES `marca` (`Id_Marca`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`Id_Familia`) REFERENCES `familia` (`Id_Familia`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('123', 'Planca', 'color azul', 3, 5, 70, 4, 200, 290, 250, 9, '0');
INSERT INTO `producto` VALUES ('43L2', 'Planca', 'Verde', 1, 5, 36, 4, 350, 290, 320, 14, '1');
INSERT INTO `producto` VALUES ('45', 'Microondas', 'Gris opaco', 8, 6, 50, 4, 2500, 3080, 2750, -69, '1');
INSERT INTO `producto` VALUES ('454', 'Sarten', 'Tefall', 8, 4, 49, 4, 270, 350, 290, -10, '1');
INSERT INTO `producto` VALUES ('5643', 'placha', '', 1, 1, 70, 4, 250, 300, 280, 38, '0');
INSERT INTO `producto` VALUES ('67804', 'Extractor', 'Extractor', 1, 1, 50, 5, 770, 886, 786, 32, '1');
INSERT INTO `producto` VALUES ('830', 'Bateria', '10 piezas roja', 1, 6, 50, 3, 1240, 1300, 1271, 31, '1');

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `Id_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre_Pro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Razon_Social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Telefono` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  PRIMARY KEY (`Id_Proveedor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES (1, 'Ricardo', 'mejor compra', '712138727', '1');
INSERT INTO `proveedor` VALUES (2, 'Carlos', 'Cuidad de Mexico', '712138727', '1');
INSERT INTO `proveedor` VALUES (3, 'prue', 'mexi', '333', '0');
INSERT INTO `proveedor` VALUES (4, 'prueba', 'mexico', '2', '0');
INSERT INTO `proveedor` VALUES (5, 'prueba', 'mexico', '1', '0');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol`  (
  `Id_Rol` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id_Rol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES (1, 'Administrador ', 'Encargado de realizar las venta, compras y modificaciones de la base de datos', '1');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `Id_Usuario` int NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Apellido1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Apellido2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Contraseña` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Id_Rol` int NULL DEFAULT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1',
  PRIMARY KEY (`Id_Usuario`) USING BTREE,
  INDEX `Id_Rol`(`Id_Rol` ASC) USING BTREE,
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `rol` (`Id_Rol`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Patricia', 'Zaragoza', 'Palma', 'patypalma878@gamil.com', 'zaragoza', NULL, 1, '1');
INSERT INTO `usuario` VALUES (2, 'Adriana', 'Trejo', 'Patricio', 'patricio@gmail.com', '2306', 'default.jpg', 1, '1');

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta`  (
  `Id_Venta` int NOT NULL AUTO_INCREMENT,
  `Fecha_Hora` datetime NULL DEFAULT NULL,
  `Cajero` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Total_General` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Venta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta
-- ----------------------------
INSERT INTO `venta` VALUES (1, NULL, NULL, 3543.00);
INSERT INTO `venta` VALUES (2, NULL, NULL, 12732.00);
INSERT INTO `venta` VALUES (3, NULL, NULL, 12732.00);
INSERT INTO `venta` VALUES (4, NULL, NULL, 12732.00);
INSERT INTO `venta` VALUES (5, NULL, NULL, 10000.00);
INSERT INTO `venta` VALUES (6, NULL, NULL, 0.00);
INSERT INTO `venta` VALUES (7, NULL, NULL, 0.00);
INSERT INTO `venta` VALUES (8, NULL, NULL, 1160.00);
INSERT INTO `venta` VALUES (9, NULL, NULL, 1160.00);
INSERT INTO `venta` VALUES (10, NULL, NULL, 70840.00);
INSERT INTO `venta` VALUES (11, NULL, NULL, 0.00);
INSERT INTO `venta` VALUES (12, NULL, NULL, 6160.00);
INSERT INTO `venta` VALUES (13, NULL, NULL, 7560.00);
INSERT INTO `venta` VALUES (14, NULL, NULL, 7560.00);
INSERT INTO `venta` VALUES (15, NULL, NULL, 7560.00);
INSERT INTO `venta` VALUES (16, NULL, NULL, 12320.00);
INSERT INTO `venta` VALUES (17, NULL, NULL, 12320.00);
INSERT INTO `venta` VALUES (18, NULL, NULL, 12320.00);
INSERT INTO `venta` VALUES (19, NULL, NULL, 12320.00);
INSERT INTO `venta` VALUES (20, NULL, NULL, 13020.00);
INSERT INTO `venta` VALUES (21, '2024-06-15 02:07:13', NULL, 10000.00);
INSERT INTO `venta` VALUES (22, NULL, NULL, 7500.00);
INSERT INTO `venta` VALUES (23, NULL, NULL, 7500.00);

-- ----------------------------
-- Procedure structure for insertar-marca
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertar-marca`;
delimiter ;;
CREATE PROCEDURE `insertar-marca`(IN p_Nomarca VARCHAR(100))
BEGIN
    INSERT INTO marca (Nom_Marca)
    VALUES (p_Nomarca);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarProducto`;
delimiter ;;
CREATE PROCEDURE `insertarProducto`(IN p_clv_producto VARCHAR(20),
    IN p_Nombre_Producto VARCHAR(255),
    IN p_Des_Producto VARCHAR(100),
    IN p_Id_Marca MEDIUMINT,
    IN p_Id_familia MEDIUMINT,
    IN p_Stock_Maximo INT,
    IN p_Stock_Minimo INT,
    IN p_Pre_Mayore DECIMAL(10,2),
    IN p_Pre_Menudeo DECIMAL(10,2),
    IN p_Pre_MedioMayoreo DECIMAL(10,2),
    IN p_Existencias INT)
BEGIN
    INSERT INTO producto (Clv_Producto, Nombre_Producto, Des_Producto, Id_Marca, Id_familia, Stock_Maximo, Stock_Minimo, Pre_Mayore, Pre_Menudeo, Pre_MedioMayoreo, Existencias)
    VALUES (p_clv_producto, p_Nombre_Producto, p_Des_Producto, p_Id_Marca, p_Id_familia, p_Stock_Maximo, p_Stock_Minimo, p_Pre_Mayore, p_Pre_Menudeo, p_Pre_MedioMayoreo, p_Existencias);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertar_categoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertar_categoria`;
delimiter ;;
CREATE PROCEDURE `insertar_categoria`(IN p_Nomfamilia VARCHAR(100))
BEGIN
    INSERT INTO familia (Nom_Familia)
    VALUES (p_Nomfamilia);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertar_marca
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertar_marca`;
delimiter ;;
CREATE PROCEDURE `insertar_marca`(IN p_Nomarca VARCHAR(100))
BEGIN
    INSERT INTO marca (Nom_Marca)
    VALUES (p_Nomarca);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertar_proveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertar_proveedor`;
delimiter ;;
CREATE PROCEDURE `insertar_proveedor`(IN p_Nombre VARCHAR(100),
    IN p_Razon VARCHAR(100),
    IN p_Telefono INT(12))
BEGIN
    INSERT INTO proveedor (Nombre_Pro, Razon_Social, Telefono)
    VALUES (p_Nombre, p_Razon, p_Telefono);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertar_rol
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertar_rol`;
delimiter ;;
CREATE PROCEDURE `insertar_rol`(IN p_Nombre VARCHAR(100),
    IN p_Apellido1 VARCHAR(100),
    IN p_Apellido2 VARCHAR(100),
    IN p_Email VARCHAR(70),
    IN p_Contraseña VARCHAR(50),
    IN p_Rol INT)
BEGIN
    INSERT INTO usuario (Nombre_Usuario, Apellido1, Apellido2, Email, Contraseña, Foto, Id_Rol)
    VALUES (p_Nombre, p_Apellido1, p_Apellido2, p_Email, p_Contraseña, 'default.jpg', p_Rol);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_actualizarDatosProvedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_actualizarDatosProvedor`;
delimiter ;;
CREATE PROCEDURE `proc_actualizarDatosProvedor`(IN p_id_proveedor INT,
    IN p_nombre_pro VARCHAR(50),
    IN p_razon VARCHAR(100),
    IN p_telefono INT)
BEGIN
    UPDATE proveedor 
    SET
        Nombre_Pro = p_nombre_pro,
        Razon_Social = p_razon,
        Telefono = p_telefono
    WHERE Id_Proveedor = p_id_proveedor;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_actualizarDatosUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_actualizarDatosUsuario`;
delimiter ;;
CREATE PROCEDURE `proc_actualizarDatosUsuario`(IN p_id_usuario INT,
    IN p_nombre_usuario VARCHAR(50),
    IN p_apellido1 VARCHAR(100),
    IN p_apellido2 VARCHAR(100),
    IN p_email VARCHAR(70),
    IN p_contrasena VARCHAR(30),
    IN p_id_rol INT)
BEGIN
    UPDATE usuario 
    SET
        Nombre_Usuario = p_nombre_usuario,
        Apellido1 = p_apellido1,
        Apellido2 = p_apellido2,
        Email = p_email,
        Contraseña = p_contrasena,
        Id_Rol = p_id_rol
    WHERE Id_Usuario = p_id_usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_actualizar_datos
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_actualizar_datos`;
delimiter ;;
CREATE PROCEDURE `proc_actualizar_datos`(IN p_clv_producto VARCHAR(20),
    IN p_Nombre_Producto VARCHAR(255),
    IN p_Des_Producto VARCHAR(100),
    IN p_Id_Marca MEDIUMINT,
    IN p_Id_familia MEDIUMINT,
    IN p_Stock_Maximo INT,
    IN p_Stock_Minimo INT,
    IN p_Pre_Mayore DECIMAL(10,2),
    IN p_Pre_Menudeo DECIMAL(10,2),
    IN p_Pre_MedioMayoreo DECIMAL(10,2),
    IN p_Existencias INT)
BEGIN
    UPDATE producto 

    SET 
        producto.Nombre_Producto = p_Nombre_Producto,
        producto.Des_Producto = p_Des_Producto,
        producto.Id_Marca = p_Id_Marca,
        producto.Id_familia = p_Id_familia,
        producto.Stock_Maximo = p_Stock_Maximo,
        producto.Stock_Minimo = p_Stock_Minimo,
        producto.Pre_Mayore = p_Pre_Mayore,
        producto.Pre_Menudeo = p_Pre_Menudeo,
        producto.Pre_MedioMayoreo = p_Pre_MedioMayoreo,
        producto.Existencias = p_Existencias
    WHERE producto.Clv_Producto = p_clv_producto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_eliminar_categoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_eliminar_categoria`;
delimiter ;;
CREATE PROCEDURE `proc_eliminar_categoria`(IN p_id_familia INT)
BEGIN 
    UPDATE familia
    SET Estatus = '0'
    WHERE Id_Familia = p_id_familia;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_eliminar_marca
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_eliminar_marca`;
delimiter ;;
CREATE PROCEDURE `proc_eliminar_marca`(IN p_id_marca VARCHAR(20))
BEGIN 
    UPDATE marca
    SET Estatus = '0'
    WHERE Id_Marca = p_id_marca;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_eliminar_prod
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_eliminar_prod`;
delimiter ;;
CREATE PROCEDURE `proc_eliminar_prod`(IN p_clv_producto VARCHAR(20))
BEGIN 
    UPDATE producto
    SET estatus = '0'
    WHERE Clv_Producto = p_clv_producto;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_eliminar_prove
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_eliminar_prove`;
delimiter ;;
CREATE PROCEDURE `proc_eliminar_prove`(IN p_id_proveedor INT)
BEGIN 
    UPDATE proveedor
    SET Estatus = '0'
    WHERE Id_Proveedor = p_id_proveedor;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_eliminar_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_eliminar_usuario`;
delimiter ;;
CREATE PROCEDURE `proc_eliminar_usuario`(IN p_id_usuario INT)
BEGIN 
    UPDATE usuario
    SET Estatus = '0'
    WHERE Id_Usuario = p_id_usuario;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mostrar_familia
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mostrar_familia`;
delimiter ;;
CREATE PROCEDURE `proc_mostrar_familia`()
BEGIN
SELECT Id_Familia, Nom_Familia FROM familia;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mostrar_marca
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mostrar_marca`;
delimiter ;;
CREATE PROCEDURE `proc_mostrar_marca`()
BEGIN
    SELECT Id_Marca, Nom_Marca FROM marca;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mostrar_rol
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mostrar_rol`;
delimiter ;;
CREATE PROCEDURE `proc_mostrar_rol`()
BEGIN
	SELECT Id_Rol, Tipo FROM rol;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mos_familia1
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mos_familia1`;
delimiter ;;
CREATE PROCEDURE `proc_mos_familia1`()
BEGIN
	SELECT Id_Familia, Nom_Familia FROM familia WHERE estatus = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mos_marca
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mos_marca`;
delimiter ;;
CREATE PROCEDURE `proc_mos_marca`()
BEGIN
	SELECT Id_Marca, Nom_Marca FROM marca WHERE Estatus = '1';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mos_marca1
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mos_marca1`;
delimiter ;;
CREATE PROCEDURE `proc_mos_marca1`()
BEGIN
	SELECT Id_Marca, Nom_Marca FROM marca WHERE Estatus = '1';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mos_produc
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mos_produc`;
delimiter ;;
CREATE PROCEDURE `proc_mos_produc`()
BEGIN
	SELECT p.Clv_Producto, p.Nombre_Producto, p.Des_Producto, m.Nom_Marca, f.Nom_Familia, p.Stock_Maximo, 
        p.Stock_Minimo, p.Pre_Mayore, p.Pre_Menudeo, p.Pre_MedioMayoreo, p.Existencias
        FROM `producto` p
        JOIN marca m ON p.Id_Marca = m.Id_Marca
        JOIN familia f ON p.Id_Familia = f.Id_Familia
        WHERE p.Estatus != '0';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mos_prove
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mos_prove`;
delimiter ;;
CREATE PROCEDURE `proc_mos_prove`()
BEGIN
	SELECT p.Id_Proveedor, p.Nombre_Pro, p.Razon_Social, p.Telefono
        FROM `proveedor` p
        WHERE p.Estatus != '0';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_mos_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_mos_usuario`;
delimiter ;;
CREATE PROCEDURE `proc_mos_usuario`()
BEGIN
SELECT u.Id_Usuario,u.Nombre_Usuario,u.Apellido1,u.Apellido2,u.Email,u.`Contraseña`,r.Tipo
FROM `usuario` u
JOIN rol r ON u.Id_Rol = r.Id_Rol
WHERE u.Estatus != '0';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_obtenerDatosProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_obtenerDatosProducto`;
delimiter ;;
CREATE PROCEDURE `proc_obtenerDatosProducto`(IN p_clv_producto VARCHAR(20))
BEGIN
SELECT
     Clv_Producto,
      Nombre_Producto,
      Des_Producto,
      Nom_Marca,
      Nom_familia,
			Stock_Maximo,
			Stock_Minimo,
			Pre_Mayore,
			Pre_Menudeo,
			Pre_MedioMayoreo,
			Existencias
      FROM producto
			INNER JOIN marca ON producto.Id_Marca= marca.Id_Marca
      INNER JOIN familia ON producto.Id_Familia = familia.Id_Familia
      WHERE producto.Clv_Producto = p_clv_producto;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_obtenerDatosProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_obtenerDatosProveedor`;
delimiter ;;
CREATE PROCEDURE `proc_obtenerDatosProveedor`(IN p_id_proveedor INT)
BEGIN
    SELECT
				Id_Proveedor,
        Nombre_Pro,
        Razon_Social,
        Telefono
    FROM proveedor 
    WHERE proveedor.Id_Proveedor = p_id_proveedor;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_obtenerDatosUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_obtenerDatosUsuario`;
delimiter ;;
CREATE PROCEDURE `proc_obtenerDatosUsuario`(IN p_id_usuario INT)
BEGIN
    SELECT
				Id_Usuario,
        Nombre_Usuario,
        Apellido1,
        Apellido2,
        Email,
        Contraseña,
        Tipo
    FROM usuario 
    INNER JOIN rol ON usuario.Id_Rol = rol.Id_Rol
    WHERE usuario.Id_Usuario = p_id_usuario;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
