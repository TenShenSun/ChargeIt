/*
Navicat MySQL Data Transfer

Source Server         : Wx
Source Server Version : 50726
Source Host           : 39.106.82.233:3306
Source Database       : ChargeIt

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-05-03 19:18:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `yn` tinyint(1) DEFAULT NULL,
  `ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('1', 'wxid_000001', '3', '30.00', '0', '2019-05-03 17:49:07', '2019-05-03 17:48:45', '2019-05-03 17:49:05');
INSERT INTO `bill` VALUES ('2', 'wxid_000005', '5', '20.00', '0', '2019-05-03 17:49:41', '2019-05-03 17:49:29', '2019-05-03 17:49:39');
INSERT INTO `bill` VALUES ('3', 'wxid_000001', '9', '59.00', '0', '2019-05-03 17:50:21', '2019-05-03 17:50:21', '2019-05-03 17:50:21');
INSERT INTO `bill` VALUES ('4', 'wxid_000001', '10', '12.00', '0', '2019-05-03 17:50:34', '2019-05-03 17:50:24', '2019-05-03 17:50:34');
INSERT INTO `bill` VALUES ('5', 'wxid_000003', '9', '123.00', '0', '2019-05-03 17:50:52', '2019-05-03 17:50:46', '2019-05-03 17:50:54');
INSERT INTO `bill` VALUES ('6', 'wxid_000006', '4', '12.00', '0', '2019-05-03 17:51:28', '2019-05-03 17:51:17', '2019-05-03 17:51:27');
INSERT INTO `bill` VALUES ('7', 'wxid_000001', '7', '123.00', '0', '2019-05-03 17:52:32', '2019-05-01 17:52:23', '2019-05-03 17:52:34');
INSERT INTO `bill` VALUES ('8', 'wxid_000001', '4', '41.00', '0', '2019-05-03 17:53:01', '2019-05-02 17:52:50', '2019-05-03 17:53:00');
SET FOREIGN_KEY_CHECKS=1;
