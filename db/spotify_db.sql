/*
Navicat MySQL Data Transfer

Source Server         : Metin2-Test
Source Server Version : 50735
Source Host           : 185.38.142.3:3306
Source Database       : spotify_db

Target Server Type    : MYSQL
Target Server Version : 50735
File Encoding         : 65001

Date: 2022-02-27 18:12:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `plan`
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `id` smallint(8) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `importe` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1', 'Individual', '115');
INSERT INTO `plan` VALUES ('2', 'Duo', '149');
INSERT INTO `plan` VALUES ('3', 'Familiar', '179');
INSERT INTO `plan` VALUES ('4', 'Estudiantes', '57');

-- ----------------------------
-- Table structure for `suscriptor`
-- ----------------------------
DROP TABLE IF EXISTS `suscriptor`;
CREATE TABLE `suscriptor` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `ap_paterno` varchar(16) NOT NULL,
  `ap_materno` varchar(16) NOT NULL,
  `servicio` varchar(16) NOT NULL,
  `fecha_nacimiento` varchar(16) NOT NULL,
  `id_plan` smallint(8) NOT NULL DEFAULT '0',
  `status` varchar(16) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of suscriptor
-- ----------------------------
INSERT INTO `suscriptor` VALUES ('4', 'Roberto', 'Cortes', 'asd', 'asdad', '2022-02-16', '1', '0');
INSERT INTO `suscriptor` VALUES ('5', 'Roberto1', 'asda', 'Cortes', 'Cortes', '2022-02-17', '0', '0');
INSERT INTO `suscriptor` VALUES ('6', 'Roberto2', 'asdasd', 'Cortes', 'asd', '2022-02-17', '0', '0');
INSERT INTO `suscriptor` VALUES ('7', 'Roberto3', 'asda', 'Cortes', 'asd', '2022-02-17', '2', '1');
INSERT INTO `suscriptor` VALUES ('8', 'asda', 'asdasd', 'asd', 'asdad', '2022-02-17', '2', '0');
INSERT INTO `suscriptor` VALUES ('9', 'asda22321', 'asdasd', 'asd', 'asdad', '2022-02-17', '2', '0');
INSERT INTO `suscriptor` VALUES ('10', 'asda22321', 'asdasd523', 'asd34', 'asdad223', '2022-02-17', '1', '0');
INSERT INTO `suscriptor` VALUES ('12', 'NuevoUsuario', 'Robin', 'Batman', 'Noséquéponer', '2022-02-17', '2', '0');
INSERT INTO `suscriptor` VALUES ('13', 'UACM', 'UACM2', 'UACM3', 'asda', '1994-12-14', '1', '0');
