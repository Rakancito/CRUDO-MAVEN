/*
Navicat MySQL Data Transfer

Source Server         : Metin2
Source Server Version : 50734
Source Host           : 158.69.22.225:3306
Source Database       : spotify_db

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2022-04-27 22:08:07
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
  `fecha_registro` varchar(64) NOT NULL DEFAULT '0000-00-00 00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf32;

-- ----------------------------
-- Records of suscriptor
-- ----------------------------
INSERT INTO `suscriptor` VALUES ('5', 'Roberto1', 'Gil', 'Cortes', 'Cortes', '2022-02-17', '0', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('6', 'Roberto2', 'Gil', 'Cortes', 'asd', '2022-02-17', '0', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('7', 'Roberto3', 'Gil', 'Cortes', 'asd', '2022-02-17', '2', '1', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('8', 'asda', 'asdasd', 'asd', 'asdad', '2022-02-17', '2', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('9', 'asda22321', 'asdasd', 'asd', 'asdad', '2022-02-17', '2', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('10', 'asda22321', 'asdasd523', 'asd34', 'asdad223', '2022-02-17', '1', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('12', 'NuevoUsuario', 'Robin', 'Batman', 'Noséquéponer', '2022-02-17', '2', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('13', 'UACM', 'UACM2', 'UACM3', 'asda', '1994-12-14', '1', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('18', 'ADSADA', 'ADSADAAAD', 'ASDAD', 'ADA', '2022-04-08', '3', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('19', 'Roberto', 'Batman', 'Superman', 'jajajaja', '2022-04-08', '0', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('23', 'Prueba', 'Fuego', 'Viento', 'Nose', '1994-12-14', '2', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('26', 'Hola', 'HolaMundo', 'Quétal', 'asdasd', '2022-04-08', '2', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('27', 'uiououio', 'sdfdsf', 'asdasd', 'asdas', '2022-04-08', '1', '0', '2022-04-23');
INSERT INTO `suscriptor` VALUES ('31', 'uuuuuu', 'eeeeee', 'ooooo', 'asdad', '2009-04-08', '1', '0', '2022-04-27');
