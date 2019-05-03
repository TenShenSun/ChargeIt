/*
Navicat MySQL Data Transfer

Source Server         : Wx
Source Server Version : 50726
Source Host           : 39.106.82.233:3306
Source Database       : ChargeIt

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-05-03 19:18:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_initial` tinyint(1) DEFAULT NULL,
  `yn` tinyint(1) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '吃饭', '1', '0', '2019-05-03 17:31:16', '2019-05-03 17:31:09', '2019-05-03 17:31:18');
INSERT INTO `category` VALUES ('2', '出行', '1', '0', '2019-05-03 17:32:53', '2019-05-03 17:32:53', '2019-05-03 17:32:53');
INSERT INTO `category` VALUES ('3', '购物', '1', '0', '2019-05-03 17:32:55', '2019-05-03 17:32:55', '2019-05-03 17:32:55');
INSERT INTO `category` VALUES ('4', '娱乐', '1', '0', '2019-05-03 17:32:58', '2019-05-03 17:32:57', '2019-05-03 17:32:58');
INSERT INTO `category` VALUES ('5', '住宿', '1', '0', '2019-05-03 17:33:00', '2019-05-03 17:33:00', '2019-05-03 17:33:00');
INSERT INTO `category` VALUES ('6', '美容', '1', '0', '2019-05-03 17:33:02', '2019-05-03 17:33:02', '2019-05-03 17:33:02');
INSERT INTO `category` VALUES ('7', '宠物', '1', '0', '2019-05-03 17:33:05', '2019-05-03 17:33:04', '2019-05-03 17:33:05');
INSERT INTO `category` VALUES ('8', '医疗', '1', '0', '2019-05-03 17:33:41', '2019-05-03 17:33:06', '2019-05-03 17:33:41');
INSERT INTO `category` VALUES ('9', '还贷', '0', '0', '2019-05-03 17:35:12', '2019-05-03 17:35:10', '2019-05-03 17:35:12');
INSERT INTO `category` VALUES ('10', '买点卡', '0', '0', '2019-05-03 17:36:11', '2019-05-03 17:36:08', '2019-05-03 17:36:11');
SET FOREIGN_KEY_CHECKS=1;
